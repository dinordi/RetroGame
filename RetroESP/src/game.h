#pragma once

#include <vector>
#include "entity.h"
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "endian.h"

typedef struct {
    bool up;
    bool down;
    bool left;
    bool right;
    bool melee;
    bool atk;
} buttonStatuses;


class game
{
public:
    game(FPGA* fpga, ButtonHandler* button);
    ~game();

    void update();
    void sendToDisplay();
    void addEntity(int ID);
    void readInput();

private:
    std::vector<Entity*> entities;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
    ButtonHandler* button;
    buttonStatuses buttonStatus;
};