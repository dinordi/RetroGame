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
#include <zephyr/drivers/gpio.h>

#include <string>
// #include "adc.h"
#include "button.h"
#include "fpga.h" //Serial communication with FPGA
#include "entity.h"
#include "game.h"

#define CHECK  DT_NODELABEL(gpio0)
/* GPIO pin configuration */
#define GPIO_PIN 15
	const struct device *const input = DEVICE_DT_GET(CHECK);

void updateGame();

int main(void)
{
	uint32_t count = 0;



	 /* Configure GPIO pin as input */
    
	if (gpio_pin_configure(input, GPIO_PIN, GPIO_INPUT)) {
        printk("Error: Unable to find GPIO device.\n");
        return 0;
    }

	buttonHandler button;
	FPGA fpga;
	game game(&fpga);
	


    game.addEntity(45);
	game.addEntity(45);
	while (1) {
       /* Read the state of the GPIO pin */
        int pin_value = gpio_pin_get(input, GPIO_PIN);
		if(pin_value)
		{
        
        game.sendToDisplay();

		}
		// game.update();
		
	}
	return 0;
}

