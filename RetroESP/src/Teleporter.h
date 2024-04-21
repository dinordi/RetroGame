/**
 * @file Teleporter.h
 * @brief This file contains the Teleporter class and related data structures. (NOTE: The teleporter is purely a visual element in the game, the player cannot interact with it)
 * @version 0.1
 * @date 2024-04-21
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#pragma once

#include "Object.h"

/**
 * @brief The Teleporter class represents a teleporter object in the game.
 * 
 * It inherits from the Object class and provides specific behavior and animation management for teleporters.
 */
class Teleporter : public Object {
public:
    /**
     * @brief Constructs a Teleporter object with the specified coordinates.
     * 
     * @param x The x-coordinate of the teleporter.
     * @param y The y-coordinate of the teleporter.
     */
    Teleporter(int x, int y);

    /**
     * @brief Defines the behavior of the teleporter.
     * 
     * This function is called to update the state of the teleporter in the game.
     */
    void behaviour() override;

    /**
     * @brief Manages the animation of the teleporter.
     * 
     * This function is called to update the animation of the teleporter in the game.
     */
    void manageAnimation() override;

    /**
     * @brief Handles collision with the teleporter.
     * 
     * This function is called when another object collides with the teleporter.
     * 
     * @param damage The damage caused by the collision.
     * @return true if the collision was successful, false otherwise.
     */
    bool collisionWith(int damage) override;
};