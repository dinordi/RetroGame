#include "fpga.h"

static const struct device *const dev = DEVICE_DT_GET(SPIBB_NODE);

FPGA::FPGA()
{
	// dev = DEVICE_DT_GET(SPIBB_NODE);
	if (!device_is_ready(dev)) {
		printk("%s: device not ready.\n", dev->name);
		return;
	}
	printk("SPI device is ready\n");
	cs_ctrl = (struct spi_cs_control){
		.gpio = GPIO_DT_SPEC_GET(SPIBB_NODE, cs_gpios),
		.delay = 0u,
	};
	buffcount = 0;
	buffID = new uint16_t[arrSize];
	buffX = new uint16_t[arrSize];
	buffY = new uint16_t[arrSize];
}

FPGA::~FPGA()
{
	delete buffID;
	delete buffX;
	delete buffY;
}

void FPGA::addLocation(uint16_t id, uint16_t x, uint16_t y)
{
	// using namespace std;

	// // Convert both the integers to string 
    // string s1 = to_string(id); 
    // string s2 = to_string(x); 
	// string s3 = to_string(y);
  
    // // Concatenate both strings 
    // string s = s1 + s2 + s3; 
  
    // // Convert the concatenated string 
    // // to integer 
    // int c = stoi(s); 

	buffID[buffcount] = id;
	buffX[buffcount] = x;
	buffY[buffcount] = y;
	buffcount++;
	printk("Added location\n");
}

void FPGA::clearBuffer()
{
	for(int i = 0; i < buffcount+1; i++)
	{
		buffID[i] = 0;
		buffX[i] = 0;
		buffY[i] = 0;
	}
	buffcount = 0;

	printk("Buffer cleared\n");
}

void FPGA::sendSprite()
{
	struct spi_config config;
	config.frequency = 1000000;
	config.operation = SPI_OP_MODE_MASTER | SPI_WORD_SET(10);
	config.slave = 0;
	config.cs = cs_ctrl;

	struct spi_buf tx_buf = {
		.buf = buffID,
		.len = buffcount * sizeof(buffID[0]),
	};

	struct spi_buf_set tx_bufs = {
		.buffers = &tx_buf,
		.count = 1,
	};
	
	int ret = spi_write(dev, &config, &tx_bufs);

	
	printk("ID WRITE; ret: %d\n", ret);
	printk(" wrote %04x \n",
		buffID[0]);

	// k_sleep(K_MSEC(200));

	config.operation = SPI_OP_MODE_MASTER | SPI_WORD_SET(10);

	tx_buf = {
		.buf = buffX,
		.len = buffcount * sizeof(uint16_t),
	};
	
	ret = spi_write(dev, &config, &tx_bufs);
	printk("X WRITE; ret: %d\n", ret);
	printk(" wrote %04x \n",
			buffX[0]);

	// k_sleep(K_MSEC(200));

	config.operation = SPI_OP_MODE_MASTER | SPI_WORD_SET(10);

	tx_buf = {
		.buf = buffY,
		.len = buffcount * sizeof(uint16_t),
	};
	
	ret = spi_write(dev, &config, &tx_bufs);
	printk("Y WRITE; ret: %d\n", ret);
	printk(" wrote %04x \n",
		buffY[0]);
		
	// k_sleep(K_MSEC(200));

}
