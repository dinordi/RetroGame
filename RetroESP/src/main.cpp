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
#include "game.h"
#include "sprites.h"
#include "scores.h"
#include "flash_esp32.h"

K_HEAP_DEFINE(game_heap, sizeof(Game) + sizeof(Game) + sizeof(ButtonHandler) + sizeof(FPGA) + sizeof(Audio));
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
	void* othersmem = k_heap_alloc(&game_heap, sizeof(ButtonHandler), K_NO_WAIT);
	ButtonHandler* button = new(othersmem) ButtonHandler();
	Flash_esp flash_esp;
	othersmem = k_heap_alloc(&game_heap, sizeof(FPGA), K_NO_WAIT);
	FPGA* fpga = new(othersmem) FPGA();
	othersmem = k_heap_alloc(&game_heap, sizeof(Audio), K_NO_WAIT);
	Audio* audio = new(othersmem) Audio();
	Score score(&flash_esp);

	void* game_memory = k_heap_alloc(&game_heap, sizeof(Game), K_NO_WAIT);
    if (game_memory == NULL) {
        printk("Failed to allocate memory for Game object!\n");
        return -1;
    }

    // Construct a Game object in the allocated memory using placement new
    Game* game = new (game_memory) Game(fpga, button, audio,&score);
	if (game == nullptr) {
	while(1)
    printk("Error: Failed to allocate memory for Game object.\n");
	// Return an error code to indicate failure
}

	
	int lastState = 1;



	// for(int i = 0; i < 99; i++)
	// {
	// 	game.addEntity(enemy1Sprites);
	// }
	
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

