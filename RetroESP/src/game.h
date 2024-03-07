#pragma once

#include <vector>
#include "entity.h"
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "endian.h"

class game
{
public:
    game(FPGA* fpga);
    ~game();

    void update();
    void sendToDisplay();
    void addEntity(int ID);

private:
    std::vector<Entity*> entities;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
};