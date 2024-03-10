#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xil_types.h"

// Get device IDs from xparameters.h
#define outputs 99
#define inputs XPAR_IO_DEVICE_ID
#define INPUT_CHANNEL 1
#define LED_CHANNEL 1
#define BTN_MASK 0b11111111111111111111111111111
#define LED_MASK 0b111111111111111111111

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
	XGpio input_device, btn_device;
	u32 data,data1;

	xil_printf("Entered function main\r\n");

	// Initialize LED Device
	cfg_ptr = XGpio_LookupConfig(inputs);
	XGpio_CfgInitialize(&input_device, cfg_ptr, cfg_ptr->BaseAddress);

	// Initialize Button Device
	//cfg_ptr = XGpio_LookupConfig(BTN_ID);
	//XGpio_CfgInitialize(&btn_device, cfg_ptr, cfg_ptr->BaseAddress);
	// Set Button Tristate
	XGpio_SetDataDirection(&input_device, 1, BTN_MASK);

	// Set Led Tristate
	//XGpio_SetDataDirection(&led_device, LED_CHANNEL, 0);


	while (1) {
		data = XGpio_DiscreteRead(&input_device, INPUT_CHANNEL);
		data1 = XGpio_DiscreteRead(&input_device, INPUT_CHANNEL);
		// Create masks for each bit length
		u32 xMask = 0x3FF; // Masker voor de eerste 10 bits (bits 0 tot 9)
		    u32 yMask = 0x1FF; // Masker voor de volgende 9 bits (bits 10 tot 18)
		    u32 idMask = 0x1FF; // Masker voor de laatste 9 bits (bits 19 tot 27)

		    // Haal de x-, y- en ID-waarden uit het 29-bits getal
		    u32 xValue = (data >> 9 & xMask); // Verschuif naar rechts om de waarde op de juiste positie te krijgen
		    u32 yValue = (data >> 19 & yMask); // Verschuif naar rechts om de waarde op de juiste positie te krijgen
		    u32 idValue = (data & idMask); // Geen verschuiving nodig omdat dit de minst significante bits zijn


		// Extract each part
		    //printBinary(data);
		xil_printf("X: %d Y: %d ID: %d\n",xValue,yValue,idValue);
			//xil_printf("3-bit part: %d, 9-bit part: %d, 10-bit part: %d, 9-bit part: %d, 1-bit part: %d\r\n", part1, part2, part3, part4, part5);


	}


}
