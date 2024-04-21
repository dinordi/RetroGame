/**
 * @file game.h
 * @author -
 * @brief Contains the Game class declaration.
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */
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

class Enemy;
class Platform;
class Projectile;
class Entity;
class Object;

/**
 * @brief Represents a range of platforms.
 */
struct PlatformRange {
    int xbegin; ///< The beginning x-coordinate of the platform range. 
    int xend; ///< The ending x-coordinate of the platform range. 
    int y; ///< The y-coordinate of the platform range. 
};

/**
 * @brief Represents the different game states.
 */
typedef enum
{
    Menu, ///< The menu state. 
    Playing, ///< The playing state. 
    Paused, ///< The paused state. 
    GameOver, ///< The game over state. 
    Drbob, ///< The Drbob state. 
    Credits, ///< The credits state. 
    NextLevel, ///< The next level state. 
    Highscores, ///< The highscores state. 
    BOSSFIGHT ///< The boss fight state. 
} gameStates;

/** 
 * @brief game class that contains all the game logic.
*/
class Game
{
public:
    /**
    @brief Constructs a Game object.
     * @param fpga A pointer to the FPGA object.
     * @param button A pointer to the ButtonHandler object.
     * @param audio A pointer to the Audio object.
     * @param score A pointer to the Score object.
     */
    Game(FPGA* fpga, ButtonHandler* button, Audio* audio, Score* score);

    /**
    @brief Destroys the Game object.
     */
    virtual ~Game();

    /**
    @brief enters switchcase for statemachine of the game.
     */
    void update();

    /**
    @brief Function for reading all the inputs en checking all collisions.
     */
    void updateGame();

    /**
    @brief Sends all game data to fpga.
     */
    void sendToDisplay();

    /**
    @brief Adds an enemy to the game.
     */
    void addEnemy();

    /**
    @brief Adds a fatbat enemy to the game.
     * @param x The x-coordinate of the fatbat.
     * @param y The y-coordinate of the fatbat.
     */
    void addFatbat(int x, int y);

    /**
     * @brief Adds a werewolf enemy to the game.
     * @param beginx The beginning x-coordinate of the platform the werewolf is on.
     * @param endx The ending x-coordinate of the platform the werewolf is on.
     * @param y The y-coordinate of the werewolf.
     */
    void addWereWolf(int beginx, int endx, int y);

    /**
     * @brief Adds a samurai enemy to the game.
     * @param x The x-coordinate of the samurai.
     * @param y The y-coordinate of the samurai.
     */
    void addSamurai(int x, int y);

    /**
     * @brief Adds a projectile to the game.
     * @param playerSprites The sprites of the projectile.
     * @param range The range of the sprite
     * @param x The x-coordinate of the projectile.
     * @param y The y-coordinate of the projectile.
     */
    void addProjectile(const int* playerSprites, int range, int x, int y);

    /**
     * @brief Reads the input from the player.
     */
    void readInput();

    /**
     * @brief Updates the game tick all game logic is checked here.
     */
    void tick();

    /**
     * @brief Draws everything thats on the screen.
     */
    void drawLevel();

    /**
     * @brief Loads the platforms for a given level in a array thats used later to draw.
     * @param levelNum The level number.
     */
    void loadPlatforms(int levelNum);

    /**
     * @brief Draws the main menu.
     */
    void drawMainMenu();

    /**
     * @brief Draws the credits.
     */
    void drawCredits();

    /**
     * @brief Draws the highscores.
     */
    void drawHighscores();

    /**
     * @brief Updates the selection cursor in the main menu.
     */
    void updateSelection();

    /**
     * @brief Checks for ranged attack collision.
     * @param entity The entity to check for collision.
     */
    void checkRangedAttack(Entity* entity);

    /**
     * @brief Draws a string on the display.
     * @param str The string to draw.
     * @param startX The starting x-coordinate of the string.
     * @param y The y-coordinate of the string.
     */
    void drawString(std::string str, int startX, int y);

    /**
     * @brief Performs the next level animation.
     */
    void nextLevelAnimation();

    /**
     * @brief Performs the level fading effect.
     * @param line The line number for fading.
     */
    void levelFading(int line);

    /**
     * @brief Sets groundlevel for entities that have gravity.
     * @param object The object to get groundlevel for.
     * @return The groundlevel of the enemy.
     */
    int collisionCheck(Object* object);

    /**
     * @brief Performs gravity check for an object so it doenst fall through an object.
     * @param object The object to check for gravity.
     * @param groundlevel The groundlevel to check for.
     * @return returns 0 for succes.
     */
    int gravityCheck(Object* object, int groundlevel);

    /**
     * @brief Performs collision check for an object.
     * @param object The object to check for collision.
     */
    void realCollisionCheck(Object* object);

    /**
     * @brief Performs border check for an object so it cant walk off the map.
     * @param object The object to check for border.
     * @return returns 0 for succes.
     */
    int borderCheck(Object* object);

    /**
     * @brief Handles the game over state.
     */
    void GameOverFunc();

    /**
     * @brief Resets the game parameters to init values.
     */
    void resetToBegin();

    /**
     * @brief Gets the range of platforms in all levels for werewolfman enemy.
     */
    void getRangePlatforms();
/**
 * @brief Check if an object can be deleted because its not needed anymore.
 * 
 */
    void checkDeleted();

private:
    std::vector<Object*> objects; ///< The list of objects in the game. 
    std::vector<Entity*> entities; ///< The list of entities in the game. 
    std::vector<Enemy*> enemies; ///< The list of enemies in the game. 
    std::vector<Projectile*> projectiles; ///< The list of projectiles in the game. 
    std::vector<Platform*> platforms; ///< The list of platforms in the game. 
    std::vector<Actor*> actors; ///< The list of actors in the game. 
    std::vector<PlatformRange> platformRanges; ///< The range of platforms in all levels for werewolfman enemy. 
    uint16_t* spriteData; ///< The sprite data for the game. 
    int spriteDataCount; ///< The count of sprite data. 
    FPGA* fpga; ///< A pointer to the FPGA object. 
    Score* score; ///< A pointer to the Score object. 
    ButtonHandler* button; ///< A pointer to the ButtonHandler object. 
    Audio* audio; ///< A pointer to the Audio object. 
    buttonStatuses buttonStatus; ///< The status of the buttons. 
    Player* player; ///< The player object. 
    Samurai* boss; ///< The boss object. 
    uint64_t frames; ///< The number of frames. 
    gameStates gameState; ///< The state of the game. 
    gameStates stateSelect; ///< The selected state of the game. 
    int Curtain; ///< The curtain value. 
    int currentLevel; ///< The current level of the game. 
    int liveEnemies; ///< The number of live enemies. 
    int killedEnemies; ///< The number of killed enemies. 
    bool fadeIn; ///< Flag indicating if the game is fading in. 
    int randomNumbers[1000]; ///< The array of random numbers. 
    bool BOB; ///< Flag indicating if BOB is active. 
};
