#pragma once

#include <vector>
#include <string>
#include <zephyr/sys/printk.h>
#include "fpga.h"
#include "button.h"
#include "player.h"
#include "audio_module.h"
#include "scores.h"
#include <zephyr/random/random.h>
#include "samurai.h"
// #include <utility>  // Voor std::pair


class Enemy;
class Platform;
class Projectile;
class Entity;
class Object;

struct PlatformRange {
    int xbegin;
    int xend;
    int y;
};

typedef enum
{
    Menu,
    Playing,
    Paused,
    GameOver,
    Drbob,
    Credits,
    NextLevel,
    Highscores,
    BOSSFIGHT

}gameStates;

class Game
{
public:
    Game(FPGA* fpga, ButtonHandler* button, Audio* audio,Score* score);
    virtual ~Game();

    void update();
    void updateGame();
    void sendToDisplay();
    void addEnemy();
    void addFatbat(int x,int y);
    void addWereWolf(int beginx,int endx, int y);
    void addSamurai(int x,int y);
    void addProjectile(const int* playerSprites,int range,int x, int y);
    void readInput();
    void tick();
    void drawLevel();
    void loadPlatforms(int levelNum);
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
    void GameOverFunc();
    void resetToBegin();
    void getRangePlatforms();
    std::vector<Platform*>* getPlatforms();

private:
    std::vector<Object*> objects;
    std::vector<Entity*> entities;
    std::vector<Enemy*> enemies;
    std::vector<Projectile*> projectiles;
    std::vector<Platform*> platforms;
    std::vector<Actor*> actors;
    std::vector<PlatformRange> platformRanges;
    uint16_t* spriteData;
    int spriteDataCount;
    FPGA* fpga;
    Score* score;
    ButtonHandler* button;
    Audio* audio;
    buttonStatuses buttonStatus;
    Player* player;
    Samurai* boss;
    uint64_t frames;
    gameStates gameState;
    gameStates stateSelect;
    int Curtain;
    int currentLevel;
    int liveEnemies;
    int killedEnemies;
    bool fadeIn;
    int randomNumbers[1000];
    bool BOB;
    bool first_init_gameover;
};
