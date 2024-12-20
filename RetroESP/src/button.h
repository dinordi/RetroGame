/**
 * @file button.h
 * @brief This file contains the ButtonHandler class and related data structures for player input.
 */

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
#define ST_NODE	DT_ALIAS(start)
#define DA_NODE	DT_ALIAS(dash)
#define SH_NODE	DT_ALIAS(shoot)

/**
 * @brief Data structure for button callback data.
 */
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
static struct button_data button_cb_data7;

/**
 * @class ButtonHandler
 * @brief Class to handle button operations.
 */
class ButtonHandler
{
public:
    ButtonHandler();
    ~ButtonHandler();

     /**
     * @brief Set up a button with the given device specification and callback data.
     * @param dev Device specification.
     * @param button_cb_data Pointer to button callback data.
     * @param id Button ID.
     */
    void setupButton(const struct gpio_dt_spec dev, struct button_data *button_cb_data, int id);
    bool pinGet(int pin);

private:
    const struct gpio_dt_spec up;
    const struct gpio_dt_spec down;
    const struct gpio_dt_spec left;
    const struct gpio_dt_spec right;
    const struct gpio_dt_spec dash;
    const struct gpio_dt_spec shoot;
    const struct gpio_dt_spec start;
};