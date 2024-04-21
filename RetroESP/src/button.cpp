#include "button.h"
static int32_t lastButtonPress = -100;
static bool clicked = false;

//Unused, is for interrupts.
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
up(GPIO_DT_SPEC_GET_OR(L_NODE, gpios,{0})), 
down(GPIO_DT_SPEC_GET_OR(R_NODE, gpios,{0})), 
left(GPIO_DT_SPEC_GET_OR(U_NODE, gpios,{0})), 
right(GPIO_DT_SPEC_GET_OR(D_NODE, gpios,{0})), 
dash(GPIO_DT_SPEC_GET_OR(DA_NODE, gpios,{0})), 
shoot(GPIO_DT_SPEC_GET_OR(SH_NODE, gpios,{0})),
start(GPIO_DT_SPEC_GET_OR(ST_NODE, gpios,{0}))
{

    printk("Setting up buttons\n");
    setupButton(left, &button_cb_data1, 1);		//Init buttons
    setupButton(right, &button_cb_data2, 2);
    setupButton(up, &button_cb_data3, 3);
    setupButton(down, &button_cb_data4, 4);
    setupButton(dash, &button_cb_data5, 5);
    setupButton(shoot, &button_cb_data6, 6);
	setupButton(start, &button_cb_data7, 7);

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
	printk("Set up button at %s pin %d\n", dev.port->name, dev.pin);
}

bool ButtonHandler::pinGet(int ID)
{
	switch (ID)
	{
	case 1:
		return gpio_pin_get(up.port, up.pin);
		break;
	case 2:
		return gpio_pin_get(down.port, down.pin);
		break;
	case 3:
		return gpio_pin_get(left.port, left.pin);
		break;
	case 4:
		return gpio_pin_get(right.port, right.pin);
		break;
	case 5:
		return gpio_pin_get(dash.port, dash.pin);
		break;
	case 6:
		return gpio_pin_get(shoot.port, shoot.pin);
		break;
	case 7:
		return gpio_pin_get(start.port, start.pin);
		break;
	default:
		break;
	}
}
