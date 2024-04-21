/**
 * @file flash_esp32.h
 * @author -
 * @brief This file contains the Flash_esp class for handling operations related to ESP32 flash memory.
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */

#pragma once
#include <zephyr/kernel.h>
#include <zephyr/sys/reboot.h>
#include <zephyr/device.h>
#include <string.h>
#include <zephyr/drivers/flash.h>
#include <zephyr/storage/flash_map.h>
#include <zephyr/fs/nvs.h>
#include <cstdint>
///#include <sstream>
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


/**
 * @brief The Flash_esp class handles operations related to ESP32 flash memory.
 */
class Flash_esp 
/**
 * @brief The Flash_esp class provides functionality to interact with the ESP32 flash memory.
 */
class Flash_esp {
public:
    /**
     * @brief Constructs a new Flash_esp object.
     */
    Flash_esp();

    /**
     * @brief Destroys the Flash_esp object.
     */
    ~Flash_esp();

public: 
    /**
     * @brief Writes data to the ESP32 flash memory.
     */
    void write_esp_flash();

    /**
     * @brief Writes a string to the ESP32 flash memory.
     * @param data The string to be written.
     */
    void write_string(std::string data);

    /**
     * @brief Erases the ESP32 flash memory.
     */
    void erase_esp_flash();

    /**
     * @brief Reads the data stored in the ESP32 flash memory.
     * @return The data read from the flash memory as a string.
     */
    std::string read_esp_flash();

    /**
     * @brief Gets the size of the ESP32 flash memory.
     * @return The size of the flash memory in bytes.
     */
    size_t get_size_flash();

private:
    uint32_t buf_word = 0U; ///< The buffer word used for writing to the flash memory.
    uint32_t offset; ///< The offset used for writing to the flash memory.
    size_t string_size; ///< The size of the string used for writing to the flash memory.
    std::vector<uint32_t> uint32Array; ///< The array of uint32_t used for writing to the flash memory.
    std::vector<uint32_t> uint32Array_read; ///< The array of uint32_t used for reading from the flash memory.
    int count_ASCII = 0; ///< The count of ASCII characters used for writing to the flash memory.

private: 
    std::string received_string; ///< The received string used for writing to the flash memory.

private:
    /**
     * @brief Converts an array of uint32_t to a string.
     * @param uint_array The array of uint32_t to be converted.
     * @param length The length of the uint_array.
     * @return The converted string.
     */
    std::string uint_array_to_string(const uint32_t* uint_array, uint32_t length);

    /**
     * @brief Converts a string to an array of uint32_t.
     * @param size The size of the string.
     * @param data The string to be converted.
     */
    void convert_string_uint_32(size_t size, std::string data);
};
