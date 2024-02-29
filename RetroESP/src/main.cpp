//
//
//
#include <zephyr/sys/printk.h>

#include <zephyr/settings/settings.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/drivers/hwinfo.h>
#include <zephyr/sys/byteorder.h>
#include <zephyr/kernel.h>
#include <zephyr/sys/util.h>


#include <string>
// #include "adc.h"
#include "button.h"
#include "fpga.h" //Serial communication with FPGA

void updateGame();

int main(void)
{
	uint32_t count = 0;

	
	

	buttonHandler button;
	FPGA fpga;


	while (1) {
		// printk("ADC reading[%u]:\n", count++);
		// adc.print();
		uint16_t id = 1;
		uint16_t x = 2;
		uint16_t y = 3;
		fpga.addLocation(id, x, y);
		fpga.addLocation(id, x, y);
		fpga.addLocation(id, x, y);
		fpga.addLocation(id, x, y);
		fpga.addLocation(id, x, y);

		fpga.sendSprite();
		fpga.clearBuffer();
		updateGame();
	}
	return 0;
}

void updateGame()
{
	//Check for input
	//Update game logic
	printk("Updating game\n");
	k_sleep(K_MSEC(1000));
	// std::this_thread::sleep_for(std::chrono::milliseconds(1000));
}

void sendToDisplay()
{
	//Send game state to display
	// (ID, x, y)
}