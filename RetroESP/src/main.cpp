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
#include <zephyr/kernel.h>

#include <string>
// #include "adc.h"
#include "button.h"
#include "fpga.h" //Serial communication with FPGA
#include "game.h"
#include "sprites.h"
#include "scores.h"
#include "flash_esp32.h"

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
	ButtonHandler* button = new ButtonHandler();
	Flash_esp flash_esp;
	FPGA* fpga = new FPGA();
	Audio* audio = new Audio();
	Score score(&flash_esp);

	Game* game = new Game(fpga, button, audio,&score);
	
	int lastState = 1;



	// for(int i = 0; i < 99; i++)
	// {
	// 	game.addEntity(enemy1Sprites);
	// }
	printk("Starting game loop\n");

	
	while (1) {
		
    	
		// printk("\nSTOPPING MUSIC\n");
		// audio.stop(audio.MUSIC);
		// k_sleep(K_MSEC(10000));
		// printk("Uart1: %d\n", audio.music_status());
		// printk("Uart2: %d\n", audio.sfx_status());
		// printk("\nPLAYING MUSIC\n");
		// audio.play_music(audio.MENU_MUSIC);
		// k_sleep(K_MSEC(10000));
		// printk("Uart1: %d\n", audio.music_status());
		// printk("Uart2: %d\n\n\n", audio.sfx_status());

		// continue;
       // Read the state of the GPIO pin 
	//    game->readInput();
        int pin_value = gpio_pin_get(input, GPIO_PIN);
		// // int pin_value = 0;
		// // lastState = 1;
		// // printk("Pin value: %d\n", pin_value);
		if(pin_value == 0 && lastState == 1)
		{
			// uint64_t time = k_cycle_get_64();
			game->update();
			// uint64_t time2 = k_cycle_get_64();
			// printk("Cycles: %lld\n", time);
		}

		lastState = pin_value;
		
	}
	delete game;
	delete button;
	delete fpga;

	return 0;
}

