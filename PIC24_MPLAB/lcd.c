/*
 * FreeRTOS Kernel V10.2.0
 * Copyright (C) 2019 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/* Demo includes. */
#include "lcd.h"

/*
 * The LCD is written to by more than one task so is controlled by this
 * 'gatekeeper' task.  This is the only task that is actually permitted to
 * access the LCD directly.  Other tasks wanting to display a message send
 * the message to the gatekeeper.
 */
static void vLCDTask( void *pvParameters );

/*
 * Setup the peripherals required to communicate with the LCD.
 */
static void prvSetupLCD( void );

/* 
 * Move to the first (0) or second (1) row of the LCD. 
 */
static void prvLCDGotoRow( unsigned short usRow );

/* 
 * Write a string of text to the LCD. 
 */
static void prvLCDPutString( char *pcString );

/* 
 * Clear the LCD. 
 */
static void prvLCDClear( void );

/*-----------------------------------------------------------*/

/* The standard PMP uses a register PMADDR that is not present with EPMP */
#ifdef      PMADDR
/* We define a preprocessor flag to let us compile differently for the two cases */
#define     PMP_PRESENT
/* The EPMP module uses the register PMCON1 which doesn't exist in PMP */
#elif       defined(PMCON1)
/* If this is present, then we compile for EPMP */
#define     EPMP_PRESENT
#endif

/* Brief delay to permit the LCD to catch up with commands. */
#define lcdVERY_SHORT_DELAY 1
#define lcdSHORT_DELAY		3
#define lcdLONG_DELAY       30

#ifdef  PMP_PRESENT
/* SFR that seems to be missing from the standard header files. */
#define PMAEN				*( ( unsigned short * ) 0x60c )
#endif

/* LCD commands. */
/* Taken from the NT7603 LCD Controller Userguide NT7603_V2.3.pdf */
/* INSTRUCTION SET ---------------------------------------------- */
/* ---- Display Clear ----
 * - Clear entire display area
 * - Restore display from shift
 * - Load address counter with Display Data RAM address 0x00 */
#define lcdCLEAR_DISPLAY                    0x01

/* ---- Display/Cursor Home ---- 
 * - Restore display from shift
 * - Load address counter with Display Data RAM address 0x00 */
#define lcdCURSOR_HOME                      0x02

/* ---- Entry Mode Set 
 * - Specify direction of cursor movement and display shift mode
 * - This operation takes place after each data transfer (r/w) */
#define lcdENTRY_MODE_DECREMENT_SHIFToff   0x04
#define lcdENTRY_MODE_DECREMENT_SHIFTon    0x05
#define lcdENTRY_MODE_INCREMENT_SHIFToff   0x06
#define lcdENTRY_MODE_INCREMENT_SHIFTon    0x07

/* ---- Display ON/OFF 
 * - Specify activation of 
 * -- display, 
 * -- cursor, and 
 * -- blinking of character at cursor position  */
#define lcdDISPLAYoff_CURSORoff_BLINKoff    0x08
#define lcdDISPLAYoff_CURSORoff_BLINKon     0x09
#define lcdDISPLAYoff_CURSORon_BLINKoff     0x0A
#define lcdDISPLAYoff_CURSORon_BLINKon      0x0B
#define lcdDISPLAYon_CURSORoff_BLINKoff     0x0C
#define lcdDISPLAYon_CURSORoff_BLINKon      0x0D
#define lcdDISPLAYon_CURSORon_BLINKoff      0x0E
#define lcdDISPLAYon_CURSORon_BLINKon       0x0F

/* ---- Display/Cursor Shift 
 * - Shift display or move cursor */
#define lcdMOVE_CURSOR_LEFT                 0x10
#define lcdMOVE_CURSOR_RIGHT                0x14
#define lcdSHIFT_LEFT                       0x18
#define lcdSHIFT_RIGHT                      0x1C

/* ---- Function Set 
 * - Set interface data length (DL),
 * - Set Number of Display Lines (N)
 * - Set Character Font (F) 
 * ONLY THE FOLLOWING ARE POSSIBLE ACCORDING TO THE CONTROLLER DOCUMENT */
#define lcdFONT_5x7_16CHAR_1LINE            0x20    
#define lcdFONT_5x10_16CHAR_1LINE           0x24
#define lcdFONT_5x7_32CHAR_1LINE            0x30
#define lcdFONT_5x7_32CHAR_2LINE            0x38

/* ---- Character Generator (CG) RAM Address Set
 * - Load the address counter with a CG RAM Address.
 * - Subsequent access is for CG RAM data 
 * NOTE THAT THE CG RAM ADDRESS IS 6 bits */
#define lcdCGRAM_ADDRESS_SET(addr)            (0x40|(addr & 0x3F))

/* ---- Display Data (DD) Ram Address Set
 * - Load the address counter with a DD RAM Address.
 * - Subsequent access is for DD RAM data 
 * NOTE THAT THE DD RAM ADDRESS IS 7 bits */
#define lcdDDRAM_ADDRESS_SET(addr)            (0x80|(addr & 0x7F))

#define lcdDDRAM_HOME_LINE_1                0x00
#define lcdDDRAM_HOME_LINE_2                0x40

/* The length of the queue used to send messages to the LCD gatekeeper task. */
#define lcdQUEUE_SIZE		3

#ifdef  EPMP_PRESENT
/* The following provide some needed information for EPMP configuration */
#define CS1_BASE_ADDRESS        0x00020000ul
#define lcdADRESSABLE_LENGTH    2
#define lcdCMD_ADDRESS          CS1_BASE_ADDRESS
#endif
/*-----------------------------------------------------------*/

/* The queue used to send messages to the LCD task. */
QueueHandle_t xLCDQueue;

#ifdef  EPMP_PRESENT
/* This provides an interface to control the EPMP */
/* For more info on what is going on here, refer to the xc16 compiler user guide 
 * and the PIC24F Family Reference Manual section on Extended Data Space (EDS) */
__eds__ unsigned int lcd_addr[lcdADRESSABLE_LENGTH] __attribute__((eds, address(lcdCMD_ADDRESS), noload));

/* Macros provide a handy, more readable interface to the CMD vs DATA bit select 
 * on the RS line going to the LCD */
#define lcdCMD              lcd_addr[0]
#define lcdDATA             lcd_addr[1]
#endif
/*-----------------------------------------------------------*/
QueueHandle_t xStartLCDTask( void )
{
	/* Create the queue used by the LCD task.  Messages for display on the LCD
	are received via this queue. */
	xLCDQueue = xQueueCreate( lcdQUEUE_SIZE, sizeof( xLCDMessage ) );

	/* Start the task that will write to the LCD.  The LCD hardware is
	initialized from within the task itself so delays can be used. */
	xTaskCreate( vLCDTask, "LCD", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, NULL );

	return xLCDQueue;
}
/*-----------------------------------------------------------*/

static void prvLCDGotoRow( unsigned short usRow )
{
	if( usRow == 0 )
	{
#ifdef  PMP_PRESENT
		PMADDR = 0x0000;
		PMDIN1 = 0x02;
#elif   defined(EPMP_PRESENT)
        lcdCMD = lcdDDRAM_ADDRESS_SET(lcdDDRAM_HOME_LINE_1);
#endif
	}
	else
	{
#ifdef  PMP_PRESENT
		PMADDR = 0x0000;
		PMDIN1 = 0xc0;
#elif   defined(EPMP_PRESENT)
        lcdCMD = lcdDDRAM_ADDRESS_SET(lcdDDRAM_HOME_LINE_2);
#endif
	}

	vTaskDelay( lcdVERY_SHORT_DELAY );
}
/*-----------------------------------------------------------*/

static void prvLCDPutString( char *pcString )
{
	/* Write out each character with appropriate delay between each. */
	while( *pcString )
	{
#ifdef  PMP_PRESENT
		PMADDR = 0x0001;
		PMDIN1 = *pcString;
		pcString++;
		vTaskDelay( lcdSHORT_DELAY );
#elif   defined(EPMP_PRESENT)
        lcdDATA = *pcString;
		pcString++;
        vTaskDelay( lcdSHORT_DELAY );
#endif
	}
}
/*-----------------------------------------------------------*/

static void prvLCDClear( void )
{
	/* Clear the display. */
#ifdef  PMP_PRESENT
	PMADDR = 0x0000;
	PMDIN1 = lcdCLEAR_DISPLAY;
#elif   defined(EPMP_PRESENT)
    lcdCMD = lcdCLEAR_DISPLAY;
#endif
	vTaskDelay( lcdSHORT_DELAY );	
}
/*-----------------------------------------------------------*/

static void prvSetupLCD( void )
{
#ifdef  PMP_PRESENT
	/* Setup the PMP. */
	PMCON = 0x83BF;
	PMMODE = 0x3FF;
	PMAEN = 1;
	PMADDR = 0x0000;
	vTaskDelay( lcdSHORT_DELAY );

	/* Set the default function. */
	PMDIN1 = lcdDEFAULT_FUNCTION;
	vTaskDelay( lcdSHORT_DELAY );

	/* Set the display control. */
	PMDIN1 = lcdDISPLAY_CONTROL;
	vTaskDelay( lcdSHORT_DELAY );

	/* Clear the display. */
	PMDIN1 = lcdCLEAR_DISPLAY;
	vTaskDelay( lcdSHORT_DELAY );

	/* Set the entry mode. */
	PMDIN1 = lcdENTRY_MODE;
	vTaskDelay( lcdSHORT_DELAY );
#elif   defined(EPMP_PRESENT)
    /* Setup the EPMP. */
    PMCON1bits.ADRMUX = 0 ;      // address is not multiplexed
    PMCON1bits.MODE = 3 ;        // master mode
    PMCON1bits.CSF = 0 ;         // PMCS1 pin used for chip select 1,
    // PMCS2 pin used for chip select 2
    PMCON1bits.ALP = 0 ;         //
    PMCON1bits.ALMODE = 0 ;      // "smart" address strobes are not used
    PMCON1bits.BUSKEEP = 0 ;     // bus keeper is not used

    // CS1 start address
    PMCS1BS = ( CS1_BASE_ADDRESS >> 8 ) ;

    PMCS1CFbits.CSDIS = 0 ;      // enable CS
    PMCS1CFbits.CSP = 1 ;        // CS1 polarity
    PMCS1CFbits.BEP = 1 ;        // byte enable polarity
    PMCS1CFbits.WRSP = 1 ;       // write strobe polarity
    PMCS1CFbits.RDSP = 1 ;        // read strobe polarity
    PMCS1CFbits.CSPTEN = 1 ;     // enable CS port
    PMCS1CFbits.SM = 0 ;         // read and write strobes on separate lines
    PMCS1CFbits.PTSZ = 0 ;       // data bus width is 8-bit
    PMCS1MDbits.ACKM = 0 ;       // PMACK is not used

    // The device timing parameters. Set the proper timing
    // according to the device used (the timing macros are defined in the hardware profile)
    PMCS1MDbits.DWAITB = 0b11 ;     // access time 3 1/4 Tcy
    PMCS1MDbits.DWAITM = 0b1111 ;
    PMCS1MDbits.DWAITE = 0b11 ;

    PMCON2bits.RADDR = 0 ;       // don't care since CS2 is not be used
    PMCON4 = 0x0001 ;            // PMA0 - PMA15 address lines are enabled

    PMCON3bits.PTWREN = 1 ;      // enable write strobe port
    PMCON3bits.PTRDEN = 1 ;      // enable read strobe port
    PMCON3bits.PTBE0EN = 1 ;     // enable byte enable port
    PMCON3bits.PTBE1EN = 0 ;     // enable byte enable port
    PMCON3bits.AWAITM = 0b11 ;   // set address latch pulses width to 3 1/2 Tcy
    PMCON3bits.AWAITE = 1 ;      // set address hold time to 1 1/4 Tcy

    PMCON1bits.PMPEN = 1 ;       // enable the module
    
    /* LCD INITIALIZATION SEQUENCE FROM NOVATEK DOCUMENT */
    /* Wait at least 30 mseconds after power on of LCD (some time has already passed) */
	vTaskDelay( lcdLONG_DELAY );
    
    /* Function Set followed by at least 40 usec delay */
    lcdCMD = lcdFONT_5x7_32CHAR_2LINE;
    vTaskDelay( lcdVERY_SHORT_DELAY );

	/* Display ON/OFF Control followed by at least 40 usec delay */
    lcdCMD = lcdDISPLAYon_CURSORoff_BLINKoff;
    vTaskDelay( lcdVERY_SHORT_DELAY );
    
    /* Clear Display followed by at least 1.64 msec delay */
    lcdCMD = lcdCLEAR_DISPLAY;
    vTaskDelay( lcdSHORT_DELAY );

    /* Home Cursor for welcome message */
    lcdCMD = lcdCURSOR_HOME;
    vTaskDelay( lcdSHORT_DELAY );
    
	/* Set the entry mode. */
	lcdCMD = lcdENTRY_MODE_INCREMENT_SHIFToff;
	vTaskDelay( lcdVERY_SHORT_DELAY );
#endif
}
/*-----------------------------------------------------------*/

static void vLCDTask( void *pvParameters )
{
xLCDMessage xMessage;
unsigned short usRow = 0;

	/* Remove compiler warnings. */
	( void ) pvParameters;

	/* Initialize the hardware.  This uses delays so must not be called prior
	to the scheduler being started. */
	prvSetupLCD();

	/* Welcome message. */
	prvLCDPutString( "www.FreeRTOS.org" );

	for( ;; )
	{
		/* Wait for a message to arrive that requires displaying. */
		while( xQueueReceive( xLCDQueue, &xMessage, portMAX_DELAY ) != pdPASS );

		/* Clear the current display value. */
		prvLCDClear();

		/* Switch rows each time so we can see that the display is still being
		updated. */
		prvLCDGotoRow( usRow & 0x01 );
		usRow++;
		prvLCDPutString( xMessage.pcMessage );

		/* Delay the requested amount of time to ensure the text just written 
		to the LCD is not overwritten. */
		vTaskDelay( xMessage.xMinDisplayTime );		
	}
}




