#include "button.h"
static int32_t lastButtonPress = -100;
static bool clicked = false;

void button_pressed(const struct device *dev, struct gpio_callback *cb,
		    uint32_t pins)
{
    struct button_data *data = CONTAINER_OF(cb, struct button_data, cb);
    int ID = data->ID;
	if(k_uptime_get_32() - lastButtonPress < 100)
	{
		return;
	}
	lastButtonPress = k_uptime_get_32();

	printk("Button with ID: %d pressed at %" PRIu32 "\n", ID, k_cycle_get_32());

}


ButtonHandler::ButtonHandler() : 
button(GPIO_DT_SPEC_GET_OR(SW0_NODE, gpios,{0})), 
button2(GPIO_DT_SPEC_GET_OR(SW1_NODE, gpios,{0})), 
button3(GPIO_DT_SPEC_GET_OR(SW2_NODE, gpios,{0})), 
button4(GPIO_DT_SPEC_GET_OR(SW3_NODE, gpios,{0})), 
button5(GPIO_DT_SPEC_GET_OR(SW4_NODE, gpios,{0})), 
button6(GPIO_DT_SPEC_GET_OR(SW5_NODE, gpios,{0}))
{

    printk("Setting up buttons\n");
    setupButton(button, &button_cb_data1, 1);
    setupButton(button2, &button_cb_data2, 2);
    setupButton(button3, &button_cb_data3, 3);
    setupButton(button4, &button_cb_data4, 4);
    setupButton(button5, &button_cb_data5, 5);
    setupButton(button6, &button_cb_data6, 6);

}

ButtonHandler::~ButtonHandler()
{

}


void ButtonHandler::setupButton(const struct gpio_dt_spec dev, struct button_data *button_cb_data, int id)
{
    int ret;
	
	if (!gpio_is_ready_dt(&dev)) {
		printk("Error: button device %s is not ready\n",
		       dev.port->name);

	}

	ret = gpio_pin_configure_dt(&dev, GPIO_INPUT);
	if (ret != 0) {
		printk("Error %d: failed to configure %s pin %d\n",
		       ret, dev.port->name, dev.pin);

	}

	ret = gpio_pin_interrupt_configure_dt(&dev,
					      GPIO_INT_EDGE_TO_INACTIVE);
	if (ret != 0) {
		printk("Error %d: failed to configure interrupt on %s pin %d\n",
			ret, dev.port->name, dev.pin);

	}
    button_cb_data->ID = id;
	// gpio_init_callback(&button_cb_data->cb, button_pressed, BIT(dev.pin));
	// gpio_add_callback(dev.port, &button_cb_data->cb);
	printk("Set up button at %s pin %d\n", dev.port->name, dev.pin);
}

bool ButtonHandler::pinGet(int ID)
{
	switch (ID)
	{
	case 1:
		return !gpio_pin_get(button.port, button.pin);
		break;
	case 2:
		return !gpio_pin_get(button2.port, button2.pin);
		break;
	case 3:
		return !gpio_pin_get(button3.port, button3.pin);
		break;
	case 4:
		return !gpio_pin_get(button4.port, button4.pin);
		break;
	case 5:
		return !gpio_pin_get(button5.port, button5.pin);
		break;
	case 6:
		return !gpio_pin_get(button6.port, button6.pin);
		break;
	default:
		break;
	}
}
