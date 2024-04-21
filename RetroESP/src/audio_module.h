//#include <iostream>
#include <vector>
#include <string.h>
#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/uart.h>
#include <zephyr/drivers/gpio.h>


#define UART_DEVICE_NODE DT_NODELABEL(uart1)
#define UART_DEVICE_NODE_1 DT_NODELABEL(uart2)
#define GPIO_PIN_1 19 // check uart1 GPIO19
#define GPIO_PIN_2 20 // check uart2 GPIO20
#define BUSY  DT_NODELABEL(gpio0)
// #define BUSY2  DT_NODELABEL(BUSY2)



/**
 * @brief The Audio class handles audio playback and control.
 */
class Audio
{
public:
   /**
    * @brief Constructs an instance of the Audio class.
    */
   Audio();

   /**
    * @brief Destructs an instance of the Audio class.
    */
   ~Audio(); 

public:
   /**
    * @brief Enumerates the different soundtracks that can be played.
    */
   enum play_soundtrack
   {
      MENU_MUSIC,         /**< Menu music */
      STAGE_1,            /**< Stage 1 music */
      STAGE_1_BOSS,       /**< Stage 1 boss music */
      STAGE_2,            /**< Stage 2 music */
      STAGE_2_BOSS,       /**< Stage 2 boss music */
      STAGE_3,            /**< Stage 3 music */
      STAGE_3_BOSS        /**< Stage 3 boss music */
   };

   /**
    * @brief Enumerates the different sound effects that can be played.
    */
   enum play_effects
   {
      // Menu effects
      MNU_CONFIRM,        /**< Menu confirm sound effect */
      MNU_SELECT,         /**< Menu select sound effect */

      // Player effects
      P_JUMP,             /**< Player jump sound effect */
      P_SHOOT,            /**< Player shoot sound effect */
      P_LOWHEALTH,        /**< Player low health sound effect */
      P_DEATH,            /**< Player death sound effect */
      P_HIT,              /**< Player hit sound effect */

      // Boss effects
      B_SLASH,            /**< Boss slash sound effect */
      B_SCREECH,          /**< Boss screech sound effect */
      B_SCREAM,           /**< Boss scream sound effect */
      B_ROAR,             /**< Boss roar sound effect */
      B_HIT,              /**< Boss hit sound effect */
      B_ELECTRICITY,      /**< Boss electricity sound effect */

      // Monster effects
      M_DEATH,            /**< Monster death sound effect */

      // Level transition effects
      T_NEXT_LEVEL        /**< Next level transition sound effect */
   };

   /**
    * @brief Enumerates the different types of audio to stop.
    */
   enum stop_audio
   {
      MUSIC,              /**< Music audio */
      SFX                 /**< Sound effects audio */
   };

public:
   /**
    * @brief Plays the specified music soundtrack.
    * @param music The soundtrack to play.
    */
   void play_music(play_soundtrack music); 

   /**
    * @brief Plays the specified sound effect.
    * @param effect The sound effect to play.
    */
   void play_effect(play_effects effect);

   /**
    * @brief Stops the specified type of audio.
    * @param stop The type of audio to stop.
    */
   void stop(stop_audio stop);

   /**
    * @brief Controls the audio playback.
    */
   void control_audio();

   /**
    * @brief Gets the status of the music audio.
    * @return The status of the music audio.
    */
   int music_status();

   /**
    * @brief Gets the status of the sound effects audio.
    * @return The status of the sound effects audio.
    */
   int sfx_status();

   /**
    * @brief Sends data over UART.
    * @param vector The data to send.
    * @param select The UART to use.
    */
   void uart_send(const std::vector<int>& vector, int select);

private:
   // Input GPIO devices for busy
   // When busy pin will be low  
   int busy_uart1 = 1;
   int busy_uart2 = 1;

   // Buffer to hold the value to be sent
   std::vector<int> uart1_buffer;
   std::vector<int> uart2_buffer;
};
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