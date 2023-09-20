//  *******************************************************************************
//  
//  mpfw / fw2 - Multi Platform FirmWare FrameWork 
//      library that contains the "main" entry point and, 
//      eventualy, application code that is platform dependent
//  Copyright (C) (2023) Marco Dau
//  
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//  
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.
//  
//  You can contact me by the following email address
//  marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
//  
//  *******************************************************************************
/*
 * main.cpp
 *
 *  Created on: Nov, 22 2022
 *      Author: Marco Dau
 */

#include "rsSerial.h"
using namespace fw2::wrapper::resources;



/* Buffer used for transmission */
// uint8_t aTxBuffer[] = " ****UART_TwoBoards communication based on DMA****  ****UART_TwoBoards communication based on DMA****  ****UART_TwoBoards communication based on DMA**** ";
uint8_t aTxBuffer[] = "Ciao Marco!";

/* Size of Trasmission buffer */
#define TXBUFFERSIZE                      (COUNTOF(aTxBuffer) - 1)
/* Size of Reception buffer */
#define RXBUFFERSIZE                      TXBUFFERSIZE

/* Exported macro ------------------------------------------------------------*/
#define COUNTOF(__BUFFER__)   (sizeof(__BUFFER__) / sizeof(*(__BUFFER__)))
/* Exported functions ------------------------------------------------------- */

/* Buffer used for reception */
uint8_t aRxBuffer[RXBUFFERSIZE];


int main(void)
{

    rsSerial::Init2();

    rsSerial::Tx(rsSerial::endl);

    rsSerial::Tx(aTxBuffer);

    /* Infinite loop */
    while (1)
    {
        rsSerial::Rx(aRxBuffer, RXBUFFERSIZE);

        rsSerial::Tx(aTxBuffer);
    }

    return 0;
}
