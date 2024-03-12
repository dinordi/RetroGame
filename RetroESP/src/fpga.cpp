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
}

FPGA::~FPGA()
{

}


void FPGA::sendSprite(uint16_t* buf1, int spriteDataCount)
{
	struct spi_config config;
	config.frequency = 10000000;
	config.operation = SPI_OP_MODE_MASTER | SPI_WORD_SET(16);
	config.slave = 0;
	config.cs = cs_ctrl;

	struct spi_buf tx_buf = {
		.buf = buf1,
		.len = spriteDataCount * sizeof(buf1[0]),
	};

	struct spi_buf_set tx_bufs = {
		.buffers = &tx_buf,
		.count = 1,
	};
	
	int ret = spi_write(dev, &config, &tx_bufs);
}

