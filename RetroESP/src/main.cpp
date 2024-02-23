//
//
//
#include <zephyr/sys/printk.h>

#include <zephyr/settings/settings.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/drivers/hwinfo.h>
#include <zephyr/sys/byteorder.h>
#include <zephyr/kernel.h>
#include <zephyr/sys/util.h>


#include <string>
// #include "adc.h"
#include "button.h"
#include "fpga.h" //Serial communication with FPGA



int main(void)
{
	uint32_t count = 0;

	buttonHandler button;
	FPGA fpga;

	while (1) {
		// printk("ADC reading[%u]:\n", count++);
		// adc.print();

		k_sleep(K_MSEC(500));
	}
	return 0;
}
