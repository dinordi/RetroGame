#pragma once

#include <vector>
#include <string>
#include "entity.h"
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "endian.h"
#include "player.h"

#include "sprites.h"
#include "platform.h"

typedef enum
{
    Menu,
    Playing,
    Paused,
    GameOver

}gameStates;

class game
{
public:
    game(FPGA* fpga, ButtonHandler* button);
    virtual ~game();

    void tick();
    void update();
    void sendToDisplay();
    void addEntity(const int* entitySprites);
    void readInput();
    void drawLevel();
    void loadPlatforms(const int level[16][63]);
    void drawMainMenu();
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
    gameStates gameState;
};