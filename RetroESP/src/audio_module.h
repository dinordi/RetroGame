// #include <iostream>
#include <vector>
#include <string.h>
#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/uart.h>
#include <zephyr/drivers/gpio.h>


#define UART_DEVICE_NODE DT_NODELABEL(uart2)
#define UART_DEVICE_NODE_1 DT_NODELABEL(uart1)
#define GPIO_PIN_1 19 // check uart1 GPIO41
#define GPIO_PIN_2 20 // check uart2 GPIO40
#define BUSY  DT_NODELABEL(gpio0)
// #define BUSY2  DT_NODELABEL(BUSY2)



class Audio
{
public:
    Audio();
   ~Audio(); 

   public:
   enum play_soundtrack
{
   MENU_MUSIC,
   STAGE_1,
   STAGE_1_BOSS,
   STAGE_2,
   STAGE_2_BOSS,
   STAGE_3,
   STAGE_3_BOSS
};
enum play_effects
{
    //Menu effects
    MNU_CONFIRM,
    MNU_SELECT,
    //player effects
    P_JUMP,
    P_SHOOT,
    P_LOWHEALTH,
    P_DEATH,
    P_HIT,
    //BOSS effects
    B_SLASH,
    B_SCREECH,
    B_SCREAM,
    B_ROAR,
    B_HIT,
    B_ELECTRICITY,
    //Monster effects  
    M_DEATH,
    //Level transistion effects
    T_NEXT_LEVEL
};

enum stop_audio
{
 MUSIC,
 SFX
};
public:
   void play_music(play_soundtrack music); 
   void play_effect(play_effects effect);
   void stop(stop_audio stop);
   void control_audio();
   int  music_status();
   int  sfx_status();
   void uart_send(const std::vector<int>& vector, int select);

private:
//input gpio devices for busy 
// when busy pin will be low  
int busy_uart1 = 1;
int busy_uart2 = 1;

//buffer to hold the value to be sent
std::vector<int> uart1_buffer;
std::vector<int> uart2_buffer;
};