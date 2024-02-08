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



#include <zephyr/drivers/adc.h>
#include "inttypes.h"
#include <stddef.h>
#include <stdint.h>

#include <string>
#include "adc.h"
#include "button.h"
#include "fpga.h"

// /* Data of ADC io-channels specified in devicetree. */
// static const struct adc_dt_spec adc_channels[] = {
// 	DT_FOREACH_PROP_ELEM(DT_PATH(zephyr_user), io_channels,
// 			     DT_SPEC_AND_COMMA)
// };

int main(void)
{
	uint32_t count = 0;
	

	ADC adc;
	buttonHandler button(&adc);
	FPGA fpga;

	while (1) {
		// printk("ADC reading[%u]:\n", count++);
		// adc.read();
		// adc.print();


		k_sleep(K_MSEC(1000));
	}
	return 0;
}