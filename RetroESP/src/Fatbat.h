#pragma once

#include "Enemy.h"
#include "sprites.h"

/**
 * @brief The Fatbat class represents a specific type of enemy called Fatbat.
 * 
 * This class inherits from the Enemy class and provides additional functionality
 * specific to Fatbat enemies.
 */
class Fatbat : public Enemy
{
public:
    /**
     * @brief Constructs a Fatbat object with the specified coordinates.
     * 
     * @param x The x-coordinate of the Fatbat's position.
     * @param y The y-coordinate of the Fatbat's position.
     */
    Fatbat(int x, int y);

    /**
     * @brief Checks for collision with the Fatbat and applies damage if collided.
     * 
     * @param damage The amount of damage to be applied.
     * @return True if collision occurred, false otherwise.
     */
    bool collisionWith(int damage) override;

    /**
     * @brief Defines the behavior of the Fatbat.
     * 
     * This function is called to determine the actions of the Fatbat.
     */
    void behaviour() override;

    /**
     * @brief Manages the animation of the Fatbat.
     * 
     * This function is responsible for updating the animation state of the Fatbat.
     */
    void manageAnimation() override;
    
private:
    int hitAnimation; ///< counter for hitanimation. 
    uint32_t randomNumbers[1000]; ///< An array of random numbers used by the Fatbat. 
    static int randomCounter; ///< A static counter used by the Fatbat for random number generation. 
};