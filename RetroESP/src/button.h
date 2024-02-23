#pragma once

#include <zephyr/sys/printk.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/kernel.h>

#include "fpga.h"

#define SW0_NODE	DT_ALIAS(pin)
#if !DT_NODE_HAS_STATUS(SW0_NODE, okay)
#error "Unsupported board: sw0 devicetree alias is not defined"
#endif

static struct gpio_callback button_cb_data;

struct button_data {
    struct gpio_callback cb;
    FPGA *fpga;
};


class buttonHandler
{
public:
    // button();
    buttonHandler();
    ~buttonHandler();

    const struct gpio_dt_spec *getButton();
    // void button_pressed();
    // void button_pressed(const struct device *dev, struct gpio_callback *cb, uint32_t pins);

private:
    const struct gpio_dt_spec button;
};