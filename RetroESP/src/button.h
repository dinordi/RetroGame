#pragma once

#include <zephyr/sys/printk.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/kernel.h>

#include "fpga.h"

#define L_NODE	DT_ALIAS(joyleft)
#define R_NODE	DT_ALIAS(joyright)
#define U_NODE	DT_ALIAS(joyup)
#define D_NODE	DT_ALIAS(joydown)
#define SW1_NODE	DT_ALIAS(button1)
#define SW2_NODE	DT_ALIAS(button2)

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
    const struct gpio_dt_spec up;
    const struct gpio_dt_spec down;
    const struct gpio_dt_spec left;
    const struct gpio_dt_spec right;
    const struct gpio_dt_spec button1;
    const struct gpio_dt_spec button2;
};