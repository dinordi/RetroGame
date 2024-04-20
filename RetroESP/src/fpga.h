/**
 * @file fpga.h
 * @brief This file contains the FPGA class and related data structures for communication with the Basys3 FPGA.
 */

#pragma once

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/spi.h>
#include <zephyr/devicetree.h>
#include <zephyr/sys/printk.h>

#define SPIBB_NODE	DT_NODELABEL(spi2)

/**
 * @class FPGA
 * @brief Class representing an FPGA device.
 *
 * This class provides methods for interacting with the Basys3 FPGA device.
 */
class FPGA
{
public:
    /**
     * @brief Construct a new FPGA object.
     */
    FPGA();

    /**
     * @brief Destroy the FPGA object.
     */
    ~FPGA();

    /**
     * @brief Send sprite data to the FPGA.
     * @param buf1 Buffer containing the sprite data.
     * @param spriteDataCount Number of sprite data elements in the buffer.
     */
    void sendSprite(uint16_t* buf1, int spriteDataCount);

private:
    struct spi_cs_control cs_ctrl; /**< SPI chip select control structure. */
};