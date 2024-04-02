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
#include "audio_module.h"


#include <string>
// #include "adc.h"
#include "button.h"
#include "fpga.h" //Serial communication with FPGA
#include "game.h"
#include "sprites.h"


#define CHECK  DT_NODELABEL(gpio0)
/* GPIO pin configuration */
#define GPIO_PIN 14
	const struct device *const input = DEVICE_DT_GET(CHECK);

void updateGame();

int main(void)
{
	printk("init");
	uint32_t count = 0;

	initializeCharacters();

	 /* Configure GPIO pin as input */
    
	if (gpio_pin_configure(input, GPIO_PIN, GPIO_INPUT)) {
        printk("Error: Unable to find GPIO device.\n");
        return 0;
    }
	ButtonHandler button;
	FPGA fpga;
	Game game(&fpga, &button);
	
	//int lastState = 1;



	// for(int i = 0; i < 99; i++)
	// {
	// 	game.addEntity(enemy1Sprites);
	// }
	printk("Starting game loop\n");
	Audio audio;
	


	int i =0;
	while (1) {
    
	 if(i == 3){	audio.play_music(audio.MENU_MUSIC);}
		printk("state uart1: %d \n",audio.music_status());
		printk("state uart2: %d\n",audio.sfx_status());
		k_msleep(1000);
		i++;

	// if(i == 20){audio.stop(audio.MUSIC);}
       /* Read the state of the GPIO pin 
        int pin_value = gpio_pin_get(input, GPIO_PIN);
		// printk("Pin value: %d\n", pin_value);
		if(pin_value == 0 && lastState == 1)
		{
			game.update();
			printk("Framedone received!\n");
        	// game.sendToDisplay();
			// game.update();
		}

		lastState = pin_value;
		*/
	}
	return 0;
}

