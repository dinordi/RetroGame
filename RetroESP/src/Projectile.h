#pragma once

#include "Object.h"

/**
 * @brief The Projectile class represents a projectile object in the game.
 * 
 * This class inherits from the Object class and provides additional functionality
 * specific to projectiles.
 */
class Projectile : public Object {

public:
    /**
     * @brief Constructs a Projectile object.
     * 
     * @param entitySprites The array of entity sprites for the projectile.
     * @param range The range of the projectile.
     * @param x The x-coordinate of the projectile's initial position.
     * @param y The y-coordinate of the projectile's initial position.
     * @param isFacingRight Indicates whether the projectile is facing right.
     */
    Projectile(const int* entitySprites, int range, int x, int y, bool isFacingRight);

    /**
     * @brief Checks if the object is a projectile.
     * 
     * @return True if the object is a projectile, false otherwise.
     */
    bool isProjectile() const override { return true; }

    /**
     * @brief Gets the type of the object.
     * 
     * @return The type of the object (PROJECTILE).
     */
    Type getType() const override { return PROJECTILE; }
};
