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
#define SW4_NODE	DT_ALIAS(pin5)
#define SW5_NODE	DT_ALIAS(pin6)

struct button_data {
    struct gpio_callback cb;
    int ID;
};

static struct button_data button_cb_data1;
static struct button_data button_cb_data2;
static struct button_data button_cb_data3;
static struct button_data button_cb_data4;
static struct button_data button_cb_data5;
static struct button_data button_cb_data6;


class ButtonHandler
{
public:
    // button();
    ButtonHandler();
    ~ButtonHandler();

    void setupButton(const struct gpio_dt_spec dev, struct button_data *button_cb_data, int id);
    bool pinGet(int pin);

private:
    const struct gpio_dt_spec button;
    const struct gpio_dt_spec button2;
    const struct gpio_dt_spec button3;
    const struct gpio_dt_spec button4;
    const struct gpio_dt_spec button5;
    const struct gpio_dt_spec button6;
};