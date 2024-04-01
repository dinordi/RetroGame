#include "flash_esp32.h"
#include "zephyr/drivers/flash.h"
#include <string.h>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <iostream>
#include <cstdint>
#include <string>
#include <string.h>

// Function to convert uint array with ASCII values to a string
std::string Flash_esp::uint_array_to_string(const uint32_t* uint_array, size_t length) {
    std::string result;
    for (size_t i = 0; i < length; ++i) {
        result += static_cast<char>(uint_array[i] & 0xFF); // Convert each uint32_t to its ASCII equivalent
    }
    return result;
}


Flash_esp::Flash_esp()
{

}

Flash_esp::~Flash_esp(){}

void Flash_esp::erase_esp_flash()
{

  	const struct device *flash_dev = PARTITION_DEVICE;
  
  
	if (!device_is_ready(flash_dev)) {
		printf("Flash device not ready\n");
		return;
	}

	printk("\nTest 1: Flash erase page at 0x%x\n", PARTITION_OFFSET);
	if (flash_erase(flash_dev, PARTITION_OFFSET, FLASH_PAGE_SIZE) != 0) {
		printf("   Flash erase failed!\n");
	} else {
		printf("   Flash erase succeeded!\n");
	}


  }


// function to write to esp flash
void Flash_esp::write_esp_flash(std::string data)
{
	//initialize flash device
  	const struct device *flash_dev = PARTITION_DEVICE;
  
  
	if (!device_is_ready(flash_dev)) {
		printf("Flash device not ready\n");
		return;
	}
//convert string to uint32 value

string_size = data.size();

    for (size_t i = 0; i < string_size ; i++) {
        buf_array_1[i] = static_cast<uint32_t>(data[i]);
        printk("char to buff : %u\n", buf_array_1[i]);
    }
		
	//checks array buffer size and writes the data to the appropriate address
	printk("buff size: %u ",string_size);
	for (uint32_t i = 0U; i < string_size+1; i++) {
		 offset = offset + 4;
		// check if i is smaller than the total array value so that the string identifier can be placed \n
		if(i < data.size()  ){
		printk("   Attempted to write %u at 0x%x\n", buf_array_1[i],
				offset);
		if (flash_write(flash_dev, offset, &buf_array_1[i],sizeof(uint32_t)) != 0) {
			printk("   Flash write failed!\n");
			return;
		}
		}
		else // write the identifier
		{
			uint32_t identity_buffer[1]; 
			//ascii for \n
			 identity_buffer[0] = 10;
			if (flash_write(flash_dev, offset,&identity_buffer[0],sizeof(uint32_t)) != 0) {
			printk(" Flash write failed!\n");
			return;
		}
		}
  }
   
}


//read the esp flash and return the string stored,
// a string is seperated with /n
//select the string you want in the flash memory 
std::string Flash_esp::read_esp_flash() {
  const struct device *flash_dev = PARTITION_DEVICE;

  std::string received_string;
  uint32_t store_ASCII[1000];
   bool detect_identifier=false;
   size_t elememt_count=0;
   uint32_t read_offset = PARTITION_OFFSET;
	for (uint32_t i = 0U; i < 1000; i++)
	{
		 read_offset =read_offset+4;
        //read flash memory
		if (flash_read(flash_dev, read_offset, &buf_word,sizeof(uint32_t)) != 0) {
			printf("Flash read failed!\n");
			return 0;
		}

	  	if(buf_word == 10 ){detect_identifier=true;} // count the identifier when it is detected at the end of the string
		if(detect_identifier==false){
		printf("Attempted to read 0x%x\n", read_offset);
        elememt_count++;

		printf("Data read: %u\n", buf_word);
       store_ASCII[i] = buf_word;
		}
	}
	printk("size: %u ",elememt_count);
  received_string = uint_array_to_string(store_ASCII,elememt_count); 
   for(size_t i=0; i<elememt_count;i++)
   {
   printk("%c",received_string[i]);

   }
   
   return received_string;
}


size_t Flash_esp::get_size_flash()
{
 return 1;
}