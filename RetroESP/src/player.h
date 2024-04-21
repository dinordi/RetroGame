/**
 * @file player.h
 * @brief This file contains the Player class and related data structures.
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#pragma once

#include "entity.h"

/**
 * @brief Structure to hold the status of various buttons.
 */
typedef struct {
    bool up;        ///< Up button status 
    bool down;      ///< Down button status 
    bool left;      ///< Left button status 
    bool right;     ///< Right button status 
    bool dash;      ///< Dash button status 
    bool shoot;     ///< Shoot button status 
    bool start;     ///< Start button status 
} buttonStatuses;

/**
 * @brief Class representing the player entity.
 */
class Player : public Entity
{
public:
    /**
     * @brief Constructor for the Player class.
     * @param playerSprites Pointer to the player sprites.
     * @param range The range of the player.
     * @param x The x-coordinate of the player.
     * @param y The y-coordinate of the player.
     */
    Player(const int* playerSprites, int range, int x, int y);

    /**
     * @brief Handles the input from the buttons.
     * @param buttonStatus The status of the buttons.
     */
    void handleInput(buttonStatuses buttonStatus);

    /**
     * @brief Sets the status of the buttons.
     * @param buttonStatus The status of the buttons.
     */
    void setButtonStatus(buttonStatuses buttonStatus);

    /**
     * @brief Creates a projectile.
     * @return A pointer to the created projectile.
     */
    Projectile* makeProjectile() override;

    /**
     * @brief Defines the behavior of the player.
     */
    void behaviour() override;

    /**
     * @brief Checks if the entity is a player.
     * @return True if the entity is a player, false otherwise.
     */
    bool isPlayer() const override { return true; }

    /**
     * @brief Checks for attack.
     * @param isX Flag indicating if the attack is in the X direction.
     * @return The result of the attack check.
     */
    int attackCheck(bool isX) override;

    /**
     * @brief Handles collision with another entity.
     * @param damage The damage caused by the collision.
     * @return True if the collision occurred, false otherwise.
     */
    bool collisionWith(int damage) override;

    /**
     * @brief Manages the animation of the player.
     */
    void manageAnimation() override;

    /**
     * @brief Gets the type of the entity.
     * @return The type of the entity.
     */
    Type getType() const override { return PLAYER; }

    friend class Game;

    /**
     * @brief Sets the Bob mode.
     */
    void setBobMode();

private:
    int printX;                 ///< The x-coordinate for printing 
    buttonStatuses lastButtonState;     ///< The status of the last button 
    buttonStatuses buttonStatus;        ///< The current status of the buttons 
    int hitAnimation;           ///< The hit animation counter 
    bool BOB;                   ///< Bob mode flag 
};
