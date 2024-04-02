#pragma once

#include <vector>
#include <string>
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "player.h"

class Platform;
class Projectile;
class Entity;
class Object;
typedef enum
{
    Menu,
    Playing,
    Paused,
    GameOver,
    Drbob,
    Credits,
    NextLevel

}gameStates;

class Game
{
public:
    Game(FPGA* fpga, ButtonHandler* button);
    virtual ~Game();

    void update();
    void updateGame();
    void sendToDisplay();
    void addEntity(const int* entitySprites,int range,int,int);
    void addProjectile(const int* playerSprites,int range,int x, int y);
    void readInput();
    void tick();
    void drawLevel();
    void loadPlatforms(const int level[8][16][63]);
    void drawMainMenu();
    void drawCredits();
    void updateSelection();
    void checkRangedAttack(Entity* entity);
    void drawString(std::string str, int startX, int y);
    void nextLevelAnimation();
    void levelFading(int line);
    int collisionCheck(Object* object);
    int gravityCheck(Object* object,int);
    int borderCheck(Object* object);
    std::vector<Platform*>* getPlatforms();

private:
    std::vector<Object*> objects;
    std::vector<Entity*> entities;
    std::vector<Projectile*> projectiles;
    std::vector<Platform*> platforms;
    std::vector<Actor*> actors;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
    ButtonHandler* button;
    buttonStatuses buttonStatus;
    Player* player;
    uint64_t frames;
    gameStates gameState;
    gameStates stateSelect;
    int Curtain;
    int currentLevel;
    bool fadeIn;
};