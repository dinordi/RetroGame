#pragma once

#include <vector>
#include "entity.h"
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "endian.h"
#include "player.h"




class game
{
public:
    game(FPGA* fpga, ButtonHandler* button);
    ~game();

    void update();
    void sendToDisplay();
    void addEntity(int* entitySprites);
    void readInput();
    void drawLevel();

private:
    std::vector<Entity*> entities;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
    ButtonHandler* button;
    buttonStatuses buttonStatus;
    Player* player;
};