#pragma once

#include <zephyr/sys/printk.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/kernel.h>

#include "fpga.h"

#define SW0_NODE	DT_ALIAS(pin)
#define SW1_NODE	DT_ALIAS(pin2)
#define SW2_NODE	DT_ALIAS(pin3)
#define SW3_NODE	DT_ALIAS(pin4)

struct button_data {
    struct gpio_callback cb;
    int ID;
};

static struct button_data button_cb_data1;
static struct button_data button_cb_data2;
static struct button_data button_cb_data3;
static struct button_data button_cb_data4;


class buttonHandler
{
public:
    // button();
    buttonHandler();
    ~buttonHandler();

    void setupButton(const struct gpio_dt_spec dev, struct button_data *button_cb_data, int id);

private:
    const struct gpio_dt_spec button;
    const struct gpio_dt_spec button2;
    const struct gpio_dt_spec button3;
    const struct gpio_dt_spec button4;
};