#pragma once
#include "entity.h"
#include <zephyr/sys/util.h>

/**
 * @brief The Enemy class represents an enemy entity.
 * 
 * This class inherits from the Entity class and provides
 * functionality specific to enemies.
 */
class Enemy : public Entity{
    public:
        /**
         * @brief Constructs an Enemy object.
         * 
         * @param entitySprites The array of entity sprites.
         * @param range The range of the enemy.
         * @param x The x-coordinate of the enemy.
         * @param y The y-coordinate of the enemy.
         */
        Enemy(const int* entitySprites, int range, int x, int y);

        /**
         * @brief Checks for collision with the enemy.
         * 
         * @param damage The amount of damage caused by the collision.
         * @return True if collision occurs, false otherwise.
         */
        bool collisionWith(int damage);

        /**
         * @brief Gets the type of the enemy.
         * 
         * @return The type of the enemy.
         */
        Type getType() const { return ENEMY; }

    private:
        int hitAnimation; /**< A counter for hitAnimation. */
};