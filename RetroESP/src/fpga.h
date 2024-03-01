#pragma once

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/spi.h>
#include <zephyr/devicetree.h>
#include <zephyr/sys/printk.h>


#include <string>
#include <thread>
#include <chrono>

#define SPIBB_NODE	DT_NODELABEL(spibb0)
#define arrSize 900

//SPI and FPGA handler
class FPGA
{
public:
    FPGA();
    ~FPGA();
    void sendSprite(uint16_t* buf1, int spriteDataCount);

private:
    struct spi_cs_control cs_ctrl;
    // uint16_t *buffID;
    // uint16_t *buffX;
    // uint16_t *buffY;
};