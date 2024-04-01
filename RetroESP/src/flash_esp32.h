
#include <zephyr/kernel.h>
#include <zephyr/sys/reboot.h>
#include <zephyr/device.h>
#include <string.h>
#include <zephyr/drivers/flash.h>
#include <zephyr/storage/flash_map.h>
#include <zephyr/fs/nvs.h>
#include <cstdint>

#include <array>
#include <string>
#include <cstring>
#include <vector>
#include <iostream>

#define PARTITION	storage_partition

#define PARTITION_OFFSET	FIXED_PARTITION_OFFSET(PARTITION)
#define PARTITION_DEVICE	FIXED_PARTITION_DEVICE(PARTITION)

#define FLASH_PAGE_SIZE   4096
#define DATA_WORD_0  0x1122
#define DATA_WORD_1  0xaabb
#define DATA_WORD_2  0xabcd
#define DATA_WORD_3  0x1234

#define FLASH_OFFSET2 0x41234
#define FLASH_PAGE_IDX 37


class Flash_esp
{
public:
     Flash_esp();
    ~Flash_esp();
public: 
    void write_esp_flash(std::string data);
    void erase_esp_flash();
    std::string read_esp_flash();

    size_t get_size_flash();
private:
    uint32_t buf_word = 0U;
    uint32_t offset =PARTITION_OFFSET;
    size_t string_size;
 private:
     std::string data_string;
    uint32_t check_written = 0;
    std::array<uint32_t,1000> buf_array_1;
private:
    std::string uint_array_to_string(const uint32_t* uint_array, uint32_t length);
};