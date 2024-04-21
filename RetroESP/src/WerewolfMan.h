#pragma once

#include "Enemy.h"
#include "platform.h"

/**
 * @brief The WerewolfMan class represents a specific type of enemy called WerewolfMan.
 * 
 * This class inherits from the Enemy class and provides additional functionality specific to the WerewolfMan enemy.
 */
class WerewolfMan : public Enemy {
public:
    /**
     @brief Constructs a new WerewolfMan object with the specified coordinates.
     * 
     * @param x The x-coordinate of the WerewolfMan's initial position.
     * @param y The y-coordinate of the WerewolfMan's initial position.
     */
    WerewolfMan(int x, int y);

    /**
    @brief Handles collision with the WerewolfMan enemy.
     * 
     * This function is called when the WerewolfMan collides with another object.
     * 
     * @param damage The amount of damage caused by the collision.
     * @return true if the collision resulted in the WerewolfMan's destruction, false otherwise.
     */
    bool collisionWith(int damage) override;

    /**
    @brief Defines the behavior of the WerewolfMan enemy.
     * 
     * This function is called to determine the actions of the WerewolfMan enemy.
     */
    void behaviour() override;

    /**
    @brief Manages the animation of the WerewolfMan enemy.
     * 
     * This function is responsible for updating the animation of the WerewolfMan enemy.
     */
    void manageAnimation() override;

    /**
    @brief Declares the Game class as a friend of the WerewolfMan class.
     * 
     * This allows the Game class to access the private members of the WerewolfMan class.
     */
    friend class Game;

private:
    int hitAnimation; /**< The current hit animation frame of the WerewolfMan enemy. */
    int beginx; /**< The starting x-coordinate of the WerewolfMan enemy. */
    int endx; /**< The ending x-coordinate of the WerewolfMan enemy. */
};