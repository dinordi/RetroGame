#include "adc.h"


#define DT_SPEC_AND_COMMA(node_id, prop, idx) \
	ADC_DT_SPEC_GET_BY_IDX(node_id, idx),


/* Data of ADC io-channels specified in devicetree. */
static const struct adc_dt_spec adc_channels[] = {
	DT_FOREACH_PROP_ELEM(DT_PATH(zephyr_user), io_channels,
			     DT_SPEC_AND_COMMA)
};

ADC::ADC()
{
    uint16_t buf;
    int err;
    struct adc_sequence sequence = {
		.buffer = &buf,
		/* buffer size in bytes, not number of samples */
		.buffer_size = sizeof(buf),
	};

    /* Configure channels individually prior to sampling. */
	for (size_t i = 0U; i < ARRAY_SIZE(adc_channels); i++) {
		if (!adc_is_ready_dt(&adc_channels[i])) {
			printk("ADC controller device %s not ready\n", adc_channels[i].dev->name);
			return;
		}

		err = adc_channel_setup_dt(&adc_channels[i]);
		if (err < 0) {
			printk("Could not setup channel #%d (%d)\n", i, err);
			return;
		}
	}


    this->value = 0;
}

ADC::~ADC()
{

}


int32_t ADC::read()
{
    int err;
	uint16_t buf;

    struct adc_sequence sequence = {
		.buffer = &buf,
		/* buffer size in bytes, not number of samples */
		.buffer_size = sizeof(buf),
	};


    for (size_t i = 0U; i < ARRAY_SIZE(adc_channels); i++) {
        int32_t val_mv;
        
        // printk("- %s, channel %d: ",
        //         adc_channels[i].dev->name,
        //         adc_channels[i].channel_id);

        (void)adc_sequence_init_dt(&adc_channels[i], &sequence);

        err = adc_read_dt(&adc_channels[i], &sequence);
        if (err < 0) {
            printk("Could not read (%d)\n", err);
            continue;
        }

        /*
            * If using differential mode, the 16 bit value
            * in the ADC sample buffer should be a signed 2's
            * complement value.
            */
        if (adc_channels[i].channel_cfg.differential) {
            val_mv = (int32_t)((int16_t)buf);
        } else {
            val_mv = (int32_t)buf;
        }
        // printk("%"PRId32, val_mv);
        err = adc_raw_to_millivolts_dt(&adc_channels[i],
                            &val_mv);
        /* conversion to mV may not be supported, skip if not */
        if (err < 0) {
            printk(" (value in mV not available)\n");
            return err;
        } else {
            // printk("ADC Value = %"PRId32" mV\n", val_mv);
            return val_mv;
        }
    }
}


void ADC::print()
{
    printk("ADC value: %d\n", this->value);
}

#define waittime 170

//This function is used to detect a shot by using LDR value, it returns true if it's a hit
bool ADC::shot()
{
    int32_t passedTime;
    int32_t valBlack = 6000;
    int32_t valWhite = 0;
    int32_t startTime = k_uptime_get_32();
    do
    {
        int32_t val = this->read();
        if (val < valBlack)             //If LDR value is lower, it's reacting to black screen and it takes time
        {
            valBlack = val;
        }
        printk("Black: %d\n", val);
        passedTime = k_uptime_get_32();

    }while((passedTime-startTime < waittime)); //For 40ms read LDR value 

    startTime = k_uptime_get_32();
    do
    {
        int32_t val = this->read(); 
        if (val > valWhite)             //If LDR value is higher, it's reacting to white screen and it takes time
        {
            valWhite = val;

        }
        printk("White: %d\n", val);
        passedTime = k_uptime_get_32();

    }while((passedTime-startTime < waittime)); //For 40ms read LDR value

    if (valWhite > valBlack*3) //If white value is higher than 1.5 times of black screen, it's a shot
    {
        return true;
    }
    else
    {
        return false;
    }

}