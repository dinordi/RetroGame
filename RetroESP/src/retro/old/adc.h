#pragma once 

#include <zephyr/drivers/adc.h>
#include <zephyr/sys/printk.h>

class ADC
{
public:
    ADC();
    ~ADC();

    int32_t read();
    bool shot();
    void print();

private:
    int32_t value;
};