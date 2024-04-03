#include "audio_module.h"

static const struct device *const uart_dev_1 = DEVICE_DT_GET(UART_DEVICE_NODE);
static const struct device *const uart_dev_2 = DEVICE_DT_GET(UART_DEVICE_NODE_1);
static const struct device *const uart_busy =  DEVICE_DT_GET(BUSY);
// static const struct device *const uart_busy2 =  DEVICE_DT_GET(BUSY2);


Audio::Audio()
{
	if (!device_is_ready(uart_dev_1)) 
    {
		printk("%s: device not ready.\n", uart_dev_1->name);
		return;
	}
	if (gpio_pin_configure(uart_busy, 19, GPIO_INPUT)) {
        printk("Error: Unable to find GPIO device.\n");
        return;
    }
    if (gpio_pin_configure(uart_busy, 20, GPIO_INPUT)) {
        printk("Error: Unable to find GPIO device.\n");
        return;
    }
}


Audio::~Audio()
{

}

// send uart and select which uart 
// uart 1 == music == select 0
// uart 2 == effects == select 1
void Audio::uart_send(const std::vector<int>& vector, int select)
{
    for(int i =0; i < vector.size(); i++){
        if(select == 0){
            uart_poll_out(uart_dev_1, vector[i]);
            // printk("%x ",vector[i]);
        }
        else
        {
            uart_poll_out(uart_dev_2, vector[i]);
            // printk("%x ",vector[i]);
        }
   }
}

//in the readme is there in depth explanation of the folder structure
//specify "01" folder 100.MP3 file, serial port to send commands : 7E FF 06 0F 00 01 64 FOLDER FILE EF 
void Audio::play_music(play_soundtrack music)
{

    switch(music)
    {
    //menu music
    case MENU_MUSIC:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x01 ,0x01 ,0xEF};  
        break;
    //stage 1 music
    case STAGE_1:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x01 ,0xEF}; 
        break;
    case STAGE_1_BOSS:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x02 ,0xEF}; 
        break;
    //stage 2 music
    case STAGE_2:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x01 ,0xEF}; 
        break;
    case STAGE_2_BOSS:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x02 ,0xEF}; 
        break;
    //stage 3 music    
    case STAGE_3:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x04 ,0x02 ,0xEF}; 
        break;
    case STAGE_3_BOSS:
    uart1_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x04 ,0x02 ,0xEF}; 
        break;
    }
    uart_send(uart1_buffer,0); // use UART1 to select music select = 0
    
}
void Audio::play_effect(play_effects effect)
{
    switch(effect)
    {
    //menu effects
    case MNU_CONFIRM:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x01 ,0x01 ,0xEF}; 
        break;
    case MNU_SELECT:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x01 ,0x02 ,0xEF}; 
        break;
    //player effects
    case P_JUMP:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x01 ,0xEF}; 
        break;
    case P_SHOOT:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x02 ,0xEF}; 
        break;
    case P_LOWHEALTH:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x03 ,0xEF}; 
        break;
    case P_DEATH:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x04 ,0xEF}; 
        break;
    case P_HIT:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x02 ,0x05 ,0xEF}; 
        break;
    //boss effects
    case B_SLASH:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x01 ,0xEF}; 
        break;
    case B_SCREECH:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x02 ,0xEF}; 
        break;
    case B_SCREAM:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x02 ,0xEF}; 
        break;
    case B_ROAR:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x02 ,0xEF}; 
        break;
   case B_HIT:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x02 ,0xEF}; 
        break;
    case B_ELECTRICITY:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x03 ,0x02 ,0xEF}; 
        break;
    //monster effects
    case M_DEATH:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x04 ,0x01 ,0xEF}; 
        break;
    //transistion effects
    case T_NEXT_LEVEL:
    uart2_buffer = {0x7E ,0xFF ,0x06 ,0x0F ,0x00 ,0x05 ,0x01 ,0xEF}; 
        break;
    }
    uart_send(uart2_buffer,1); // use UART2 to select effects select = 1
}

// state is low when busy 
int Audio::music_status()
{
    return gpio_pin_get(uart_busy, GPIO_PIN_1);
}

int Audio::sfx_status()
{
    return gpio_pin_get(uart_busy, GPIO_PIN_2);
}

// select sound effect or music to stop
void Audio::stop(stop_audio stop)
{
switch(stop)
{
    case MUSIC:
    
    uart1_buffer = {0x7E ,0xFF, 0x06 ,0x16 ,0x00  ,0x00 ,0x00 ,0xFE ,0xE5, 0xEF}; 
    uart_send(uart1_buffer,0);
    uart1_buffer.clear();
        break;
    case SFX:
    uart2_buffer = {0x7E ,0xFF, 0x06 ,0x16 ,0x00  ,0x00 ,0x00 ,0xFE ,0xE5, 0xEF}; 
    uart_send(uart2_buffer,1); 
    uart2_buffer.clear();
        break;


}

}

