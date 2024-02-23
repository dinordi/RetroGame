#include "button.h"
static int32_t lastButtonPress = -100;
static bool clicked = false;

void button_pressed(const struct device *dev, struct gpio_callback *cb,
		    uint32_t pins)
{
    // printk("Button pressed at %" PRIu32 "\n", k_cycle_get_32());
	struct button_data *data = CONTAINER_OF(cb, struct button_data, cb);
	FPGA *fpga = data->fpga;
	if(k_uptime_get_32() - lastButtonPress < 100)
	{
		return;
	}
	lastButtonPress = k_uptime_get_32();
	// printk("Button pressed at %" PRIu32 "\n", k_cycle_get_32());
	//Start shooting function on FPGA with enemy locations
	// fpga->sendShot();
	//Handle LDR value
	printk("Button pressed at %" PRIu32 "\n", k_cycle_get_32());

}

buttonHandler::buttonHandler() : button(GPIO_DT_SPEC_GET_OR(SW0_NODE, gpios,{0}))
{


    int ret;
	
	if (!gpio_is_ready_dt(&button)) {
		printk("Error: button device %s is not ready\n",
		       button.port->name);

	}

	ret = gpio_pin_configure_dt(&button, GPIO_INPUT);
	if (ret != 0) {
		printk("Error %d: failed to configure %s pin %d\n",
		       ret, button.port->name, button.pin);

	}

	ret = gpio_pin_interrupt_configure_dt(&button,
					      GPIO_INT_EDGE_TO_INACTIVE);
	if (ret != 0) {
		printk("Error %d: failed to configure interrupt on %s pin %d\n",
			ret, button.port->name, button.pin);

	}

	gpio_init_callback(&button_cb_data, button_pressed, BIT(button.pin));
	gpio_add_callback(button.port, &button_cb_data);
	printk("Set up button at %s pin %d\n", button.port->name, button.pin);


}

buttonHandler::~buttonHandler()
{

}

const struct gpio_dt_spec *buttonHandler::getButton()
{
	return &button;
}

// void buttonHandler::button_pressed(const struct device *dev, struct gpio_callback *cb,
// 		    uint32_t pins)
// {
//     printk("Button pressed at %" PRIu32 "\n", k_cycle_get_32());
// }
