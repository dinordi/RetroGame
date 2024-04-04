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
#include "WerewolfMan.h"
#include "globals.h"
#include "level.h"

#define CHECK  DT_NODELABEL(gpio0)
/* GPIO pin configuration */
#define GPIO_PIN 14
	const struct device *const input = DEVICE_DT_GET(CHECK);


std::vector<Fatbat*> fatbats;
std::vector<Platform*> level1;
std::vector<Platform*> level2;
std::vector<Platform*> level3;
std::vector<Bullet*> bullets;
std::vector<WerewolfMan*> werewolfMans;



void loadPlatforms(int levelNum, std::vector<Platform*>* platforms)
{
	for(int i = 0; i < 16; i++) // 16 rows
    {
        for(int j = 0; j < 63; j++) // 63 columns
        {
            if(level[levelNum][i][j] != 0)    // If the tile is not empty
            {
                int tileX = j * 31; //31 is tile width/height
                int tileY = i * 31;
                int tileID = level[levelNum][i][j] + 99;  // Add 99 to the tileID to get the correct sprite
                Platform* platform = new Platform(tileID, tileX, tileY, 15);    // Create a new platform
                platforms->push_back(platform);
            }
        }
    }
}

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

	for (int i = 0; i < 40; i++) {
    	Fatbat* fatbat = new Fatbat(360, 0);
    	fatbats.push_back(fatbat);
	}
	
	for (int i = 0; i < 20; i++) {
    	WerewolfMan* werewolfMan = new WerewolfMan(360, 0);
    	werewolfMans.push_back(werewolfMan);
	}

	loadPlatforms(0, &level1);
	loadPlatforms(1, &level2);
	loadPlatforms(2, &level3);

	for(int i=0; i < 20; i++)
	{
		Bullet* bullet = new Bullet(bulletID,7, 400,400,true);
		bullets.push_back(bullet);
	}

	ButtonHandler* button = new ButtonHandler();
	Flash_esp* flash_esp = new Flash_esp();
	FPGA* fpga = new FPGA();
	Audio* audio = new Audio();
	Score* score = new Score(flash_esp);

	Game* game = new Game(fpga, button, audio, score);
	
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
		// int pin_value = button->pinGet(7);
		// printk("Pin value: %d\n", pin_value);
		// // int pin_value = 0;
		// // lastState = 1;
		// // printk("Pin value: %d\n", pin_value);
		if(pin_value == 0 && lastState == 1)
		{
			// uint64_t time = k_cycle_get_64();
			game->update();
			// printk("PLAY AUDIO\n");;
			// audio->play_effect(audio->M_DEATH);
			// audio->uart_send({0x7E, 0xFF, 0x06, 0x03, 0x00, 0x00, 0x01, 0xEF}, 1);
			// k_sleep(K_MSEC(1000));
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
// class Fatbat2
// {
// 	public:
// 	Fatbat2(int id)
// 	{
// 		this->id = id;
// 	}
// 	void test()
// 	{
// 		rnd = sys_rand32_get();
// 		printk("Random %d: %u\n", id, rnd);

// 	}
// 	private:
// 	uint32_t rnd;
// 	int id;
// };

// int main(void)
// {
//     printk("Random Number Generator Example\n");
// 	Fatbat2 f1(1);
// 	Fatbat2 f2(2);
//     while (1) {
//         // uint32_t random_number = sys_rand32_get();
//         // printk("Random Number: %u\n", random_number);
// 		f1.test();
// 		f2.test();
//         // k_sleep(K_MSEC(1)); // Sleep for 1 second
// 		// k_sleep(K_USEC(100));
//     }
// 	return 0;
// }
