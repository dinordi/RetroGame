
#pragma once
#include <zephyr/kernel.h>
#include <zephyr/sys/reboot.h>
#include <zephyr/device.h>
#include <string.h>
#include <zephyr/drivers/flash.h>
#include <zephyr/storage/flash_map.h>
#include <zephyr/fs/nvs.h>
#include <cstdint>
//#include <sstream>
#include <cstdint>
#include <vector>
#include <string>
#include <cstring>



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
    void write_esp_flash();
    void write_string(std::string data);
    void erase_esp_flash();
    std::string read_esp_flash();

    size_t get_size_flash();
private:
    uint32_t buf_word = 0U;
    uint32_t offset;
    size_t string_size;
    std::vector<uint32_t> uint32Array;
    std::vector<uint32_t> uint32Array_read;
    int count_ASCII =0;

 private: 
    std::string received_string;

private:
    std::string uint_array_to_string(const uint32_t* uint_array, uint32_t length);
    void convert_string_uint_32(size_t size,std::string data );
};