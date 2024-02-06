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
#include <string>

class controller
{
private:
	std::string name;
public:
	controller(std::string name)
	{
		this->name = name;
	}
	void print(std::string str)
	{
		printk(str.c_str());
	}
	void printName()
	{
		printk(this->name.c_str());
	}
};

int main(void)
{
	printk("Hello World!!\n");
	controller c("test");
	c.print("Test 123\n");
	c.printName();
	return 0;
}