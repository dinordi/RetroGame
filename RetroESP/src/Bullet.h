/**
 * @file Bullet.h
 * @author -
 * @brief Contains the Bullet class declaration.
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#pragma once
#include "Projectile.h"

/**
 * @brief The Bullet class represents a bullet projectile.
 * 
 * This class inherits from the Projectile class and provides
 * functionality specific to bullets.
 */
class Bullet : public Projectile {
public:
    /**
     @brief Constructs a Bullet object.
     * 
     * @param entitySprites The array of entity sprites.
     * @param range The range of the bullet.
     * @param x The x-coordinate of the bullet's initial position.
     * @param y The y-coordinate of the bullet's initial position.
     * @param isFacingRight Indicates whether the bullet is facing right.
     */
    Bullet(const int* entitySprites, int range, int x, int y, bool isFacingRight);

    /**
    @brief Defines the behavior of the bullet.
     * 
     * This function is called to update the bullets behavior.
     * It is overridden from the base class Projectile.
     */
    void behaviour() override;

    /**
    @brief Handles collision with another entity.
     * 
     * This function is called when the bullet collides with another entity.
     * It is overridden from the base class Projectile.
     * 
     * @param damage The damage caused by the collision.
     * @return True if the collision resulted in a hit, false otherwise.
     */
    bool collisionWith(int damage) override;

    /**
    @brief Manages the animation of the bullet.
     * 
     * This function is called to update the animation of the bullet.
     * It is overridden from the base class Projectile.
     */
    void manageAnimation() override;

    /**
    @brief Sets the bullet's mode to bobbing.
     * 
     * This function sets the bullet's mode to bob, which raises damage to 1000.
     * It is a friend function of the Player class.
     */
    void setBobMode();

   friend class Player;
};