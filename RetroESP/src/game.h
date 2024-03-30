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



class Game
{
public:
    Game(FPGA* fpga, ButtonHandler* button);
    virtual ~Game();

    void update();
    void sendToDisplay();
    void addEntity(const int* entitySprites,int range);
    void readInput();
    void tick();
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
    uint64_t frames;
};