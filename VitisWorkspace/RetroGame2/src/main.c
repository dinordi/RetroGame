#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xil_types.h"

// Get device IDs from xparameters.h
#define vposhpos XPAR_IO1_DEVICE_ID
#define inputs XPAR_IO_DEVICE_ID
#define INPUT_CHANNEL 1
#define VPOSHPOS_CHANNEL 1
#define OUTPUTS_CHANNEL 2
#define INPUT_MASK 0b11111111111111111111111111111
#define VPOSHPOS_MASK   0b11111111111111111111


typedef struct {
	int ID;
	int x;
	int y;
}dataStruct;


void printBinary(uint32_t value) {
    int i;
    for (i = 31; i >= 0; i--) {
    	xil_printf("%u", (value >> i) & 1);
        if (i % 4 == 0) {
        	 xil_printf(" "); // Voeg een spatie in elke 4 bits voor leesbaarheid
        }
    }
    xil_printf("\n");
}
int main() {
	XGpio_Config *cfg_ptr;
	XGpio input_device, vposhpos_device;
	u32 data,data1;

	xil_printf("Entered function main\r\n");

	// Initialize INPUT Device
	cfg_ptr = XGpio_LookupConfig(inputs);
	XGpio_CfgInitialize(&input_device, cfg_ptr, cfg_ptr->BaseAddress);

	// Initialize VPOSHPOS Device
	cfg_ptr = XGpio_LookupConfig(vposhpos);
	XGpio_CfgInitialize(&vposhpos_device, cfg_ptr, cfg_ptr->BaseAddress);


	// Set INPUT Tristate
	XGpio_SetDataDirection(&input_device, 1, INPUT_MASK);

	// Set VPOSHPOS Tristate
	XGpio_SetDataDirection(&vposhpos_device, VPOSHPOS_CHANNEL, VPOSHPOS_MASK);
	u32 counter = 1;
	int lastData = 1;
	int index = 0;
	dataStruct dataArray[100];


	while (1) {
		data = XGpio_DiscreteRead(&input_device, INPUT_CHANNEL);
		data1 = XGpio_DiscreteRead(&vposhpos_device, VPOSHPOS_CHANNEL);
		// Create masks for each bit length
		u32 xMask = 0x3FF; // Masker voor de eerste 10 bits (bits 0 tot 9)
		    u32 yMask = 0x1FF; // Masker voor de volgende 9 bits (bits 10 tot 18)
		    u32 idMask = 0x1FF; // Masker voor de laatste 9 bits (bits 19 tot 27)

		    // Haal de x-, y- en ID-waarden uit het 29-bits getal
		    u32 xValue = (data >> 9 & xMask); // Verschuif naar rechts om de waarde op de juiste positie te krijgen
		    u32 yValue = (data >> 19 & yMask); // Verschuif naar rechts om de waarde op de juiste positie te krijgen
		    u32 idValue = (data & idMask); // Geen verschuiving nodig omdat dit de minst significante bits zijn
		    u32 dataready = (data >> 28);

		    u32 hpos = (data1 & xMask);
		    u32 vpos = (data1 >> 10 & xMask);

		// Extract each part
//		    printBinary(data1);
//		    if((counter % 60) == 0)
//		    {
//		    	xil_printf("counter: %d\n", counter);
//		    	counter++;
//		    	xil_printf("X: %d Y: %d ID: %d\n",dataArray[0].x,dataArray[0].y,dataArray[0].ID);
//		    	xil_printf("X: %d Y: %d ID: %d\n",dataArray[1].x,dataArray[1].y,dataArray[1].ID);
//		    }
//		    if((counter % 11) < 10)
		    if(dataready == 1 && lastData == 0)
			{
//				xil_printf("vpos: %d hpos: %d\n",vpos,hpos);
		    	xil_printf("X: %d Y: %d ID: %d\n",xValue,yValue,idValue);
//				counter++;
//		    	xil_printf("%d\n", counter);
//				if(idValue == 45)
//				{
//					xil_printf("45 seen!\n");
//				}
//				dataArray[index].ID = idValue;
//				dataArray[index].x = xValue;
//				dataArray[index].y = yValue;
//				xil_printf("X: %d Y: %d ID: %d\n",dataArray[0].x,dataArray[0].y,dataArray[0].ID);
//				printBinary(data);
//				index++;
//				if(index == 2)
//				{
//					index = 0;
//				}
			}
		    lastData = dataready;
//		xil_printf("X: %d Y: %d ID: %d\n",xValue,yValue,idValue);
//		xil_printf("vpos: %d hpos: %d\n",vpos,hpos);
			//xil_printf("3-bit part: %d, 9-bit part: %d, 10-bit part: %d, 9-bit part: %d, 1-bit part: %d\r\n", part1, part2, part3, part4, part5);


	}


}
