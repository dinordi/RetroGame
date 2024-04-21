/**
 * @file Object.h
 * @brief This file contains the Object class and related data structures 
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#pragma once
#include "actor.h"

/**
 * @brief Enumeration representing the different states of an object.
 */
typedef enum {
    idle,       ///< Object is idle
    walking,    ///< Object is walking
    jumping,    ///< Object is jumping
    attacking,  ///< Object is attacking
    flying,     ///< Object is flying
    hit,        ///< Object is hit
    dead        ///< Object is dead
} state;

/**
 * @brief Class representing an Object, derived from the Actor class.
 */
class Object : public Actor {

public:

    /**
     * @brief Constructor for the Object class.
     * @param entitySprites Pointer to the array of entity sprites.
     * @param range The range of the sprite.
     * @param x The x-coordinate of the object.
     * @param y The y-coordinate of the object.
     */
    Object(const int* entitySprites, int range, int x, int y);

    /**
     * @brief Get the x-speed of the object.
     * @return The x-speed of the object.
     */
    int getxSpeed();

    /**
     * @brief Get the y-speed of the object.
     * @return The y-speed of the object.
     */
    int getySpeed();

    /**
     * @brief Update the y-speed of the object.
     * @param speed The new y-speed of the object.
     */
    void updateySpeed(float speed);

    /**
     * @brief Set the y-speed of the object.
     * @param speed The new y-speed of the object.
     */
    void setySpeed(float speed);

    /**
     * @brief Manage the animation of the object.
     */
    virtual void manageAnimation();

    /**
     * @brief Pure virtual function representing the behavior of the object.
     */
    virtual void behaviour() = 0;

    /**
     * @brief Get the state of the object.
     * @return The state of the object.
     */
    state getState() const { return myState; }

    /**
     * @brief Get the type of the object.
     * @return The type of the object.
     */
    Type getType() const { return OBJECT; }

    /**
     * @brief Do certain action when object has collision.
     * @param damage The damage to be applied.
     * @return True if collision occurred, false otherwise.
     */
    virtual bool collisionWith(int damage);

    friend class Game;

protected:
    float ySpeed;               ///< The y-speed of the object.
    float xSpeed;               ///< The x-speed of the object.
    const int* entitySprites;   ///< Pointer to the array of entity sprites.
    state myState;              ///< The state of the object.
    state lastmyState;          ///< The last state of the object.
    int spriteCounter;          ///< The sprite counter of the object.
    bool isFacingRight;         ///< Flag indicating if the object is facing right.
    bool hasGravity;            ///< Flag indicating if the object has gravity.
    bool hasCollision;          ///< Flag indicating if the object has collision.
    bool isGrounded;            ///< Flag indicating if the object is grounded.
    bool hit;                   ///< Flag indicating if the object is hit.
    bool lastHit;               ///< Flag indicating if the object was hit previously.
    int damage;                 ///< The damage of the object.
    int damageDone;             ///< The damage done by the object.
protected:
    bool inUse;                 ///< Flag indicating if the object is in use.
};
