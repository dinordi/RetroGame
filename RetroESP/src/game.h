#pragma once

#include <vector>
#include <string>
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "player.h"
#include "audio_module.h"
#include "scores.h"
class Enemy;
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
    NextLevel,
    Highscores

}gameStates;

class Game
{
public:
    Game(FPGA* fpga, ButtonHandler* button, Audio* audio,Score* score);
    virtual ~Game();

    void update();
    void updateGame();
    void sendToDisplay();
    void addFatbat(int x,int y);
    void addProjectile(const int* playerSprites,int range,int x, int y);
    void readInput();
    void tick();
    void drawLevel();
    void loadPlatforms(const int level[8][16][63]);
    void drawMainMenu();
    void drawCredits();
    void drawHighscores();
    void updateSelection();
    void checkRangedAttack(Entity* entity);
    void drawString(std::string str, int startX, int y);
    void nextLevelAnimation();
    void levelFading(int line);
    int collisionCheck(Object* object);
    int gravityCheck(Object* object,int);
    void realCollisionCheck(Object* object);
    void checkDeleted();
    int borderCheck(Object* object);
    std::vector<Platform*>* getPlatforms();

private:
    std::vector<Object*> objects;
    std::vector<Entity*> entities;
    std::vector<Enemy*> enemies;
    std::vector<Projectile*> projectiles;
    std::vector<Platform*> platforms;
    std::vector<Actor*> actors;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
    Score* score;
    ButtonHandler* button;
    Audio* audio;
    buttonStatuses buttonStatus;
    Player* player;
    uint64_t frames;
    gameStates gameState;
    gameStates stateSelect;
    int Curtain;
    int currentLevel;
    bool fadeIn;
};