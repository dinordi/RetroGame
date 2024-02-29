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
    void addLocation(uint16_t id, uint16_t x, uint16_t y);
    void clearBuffer();
    void sendSprite();

private:
    struct spi_cs_control cs_ctrl;
    uint16_t *buffID;
    uint16_t *buffX;
    uint16_t *buffY;
    size_t buffcount;
};