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
#include "entity.h"
#include "game.h"


void updateGame();

int main(void)
{
	uint32_t count = 0;

	
	

	buttonHandler button;
	FPGA fpga;
	game game(&fpga);
	


	// for(int i = 1; i <= 150; i++)
	// {
	// 	game.addEntity(i%11);
	
	// }

	while (1) {

		// game.update();
		// game.sendToDisplay();
	}
	return 0;
}

