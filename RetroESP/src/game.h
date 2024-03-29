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
    GameOver,
    Drbob,
    Credits

}gameStates;

class Game
{
public:
    Game(FPGA* fpga, ButtonHandler* button);
    virtual ~Game();

    void update();
    void updateGame();
    void sendToDisplay();
    void addEntity(const int* entitySprites);
    void readInput();
    void tick();
    void drawLevel();
    void loadPlatforms(const int level[16][63]);
    void drawMainMenu();
    void drawCredits();
    void updateSelection();
    void drawString(std::string str, int startX, int y);
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
    gameStates stateSelect;
};