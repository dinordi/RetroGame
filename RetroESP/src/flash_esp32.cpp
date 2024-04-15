#include "flash_esp32.h"
#include "zephyr/drivers/flash.h"
#include "zephyr/sys/printk.h"
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <string.h>
#include <string>

// Function to convert uint array with ASCII values to a string
const struct device* flash_dev = PARTITION_DEVICE;
/*std::string Flash_esp::uint_array_to_string(const uint32_t* uint_array, size_t length) {
    std::string result;
    for (size_t i = 0; i < length; ++i) {
        result += static_cast<char>(uint_array[i] & 0xFF); // Convert each uint32_t to its ASCII
equivalent
    }
    return result;
}
*/

Flash_esp::Flash_esp() {}

Flash_esp::~Flash_esp() {}

void Flash_esp::erase_esp_flash()
{

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

void
Flash_esp::write_string(std::string data)
{
count_ASCII =0;
  // Convert each ASCII value to uint32_t and store in the array
  for (char c : data) {
    uint32Array.push_back(static_cast<uint32_t>(static_cast<unsigned char>(c)));
    count_ASCII++;
  }
  if (count_ASCII > 0) { // if not empty
    write_esp_flash();
  }
}
void Flash_esp::write_esp_flash()
{
  erase_esp_flash();
  //printf("\nTest 2: Flash write (word array 1)\n");
  for (int i = 0U; i < count_ASCII; i++) { // 4 is test value

    offset = PARTITION_OFFSET + (i << 2);

    //printf("Attempted to write %u at 0x%x\n", uint32Array[i], offset);
    if (flash_write(flash_dev, offset, &uint32Array[i], sizeof(uint32_t)) != 0) {
      printf("   Flash write failed!\n");
      return;
    }
	
  }
  //uint32Array.clear();
}
std::string Flash_esp::read_esp_flash()
{
int test =0;

for (int i = 0U; i < 1000; i++) { // 4 is test value

    offset = PARTITION_OFFSET + (i << 2);


    //printf("   Attempted to read 0x%x\n", offset);
    if (flash_read(flash_dev, offset, &buf_word, sizeof(uint32_t)) != 0) {
      printf("   Flash read failed!\n");
      return "";
    }
	
	if(buf_word> 128){break;} //non ASCII detected
	uint32Array_read.push_back(buf_word);
   // printf("   Data read: %u\n", buf_word);
    if (uint32Array[i] == buf_word) {
     // printf("   Data read matches data written. Good!\n");
    } else {
     // printf("   Data read does not match data written!\n");
    }
  }

	    // Convert each uint32_t value to a character and append to the string
    for (uint32_t val : uint32Array_read) {
        received_string += static_cast<char>(val);
    }

  return received_string;

}

