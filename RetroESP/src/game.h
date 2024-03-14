#pragma once

#include <vector>
#include "entity.h"
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "endian.h"
#include "player.h"

#include "sprites.h"
#include "platform.h"



class game
{
public:
    game(FPGA* fpga, ButtonHandler* button);
    virtual ~game();

    void update();
    void sendToDisplay();
    void addEntity(const int* entitySprites);
    void readInput();
    void drawLevel();
    void loadPlatforms(const int level[16][63]);
    std::vector<Platform*>* getPlatforms();

private:
    std::vector<Entity*> entities;
    std::vector<Platform*> platforms;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
    ButtonHandler* button;
    buttonStatuses buttonStatus;
    Player* player;
};