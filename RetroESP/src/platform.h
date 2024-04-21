#pragma once

#include "actor.h"

/**
 * @brief The Platform class represents a platform in the game.
 * 
 * This class inherits from the Actor class and provides additional functionality specific to platforms.
 */
class Platform : public Actor
{
public:
    /**
     * @brief Constructs a Platform object with the specified ID, position, and range.
     * 
     * @param ID The ID of the platform.
     * @param x The x-coordinate of the platform's position.
     * @param y The y-coordinate of the platform's position.
     * @param range The range of the platform sprite.
     */
    Platform(int ID, int x, int y, int range);

    /**
     * @brief Default destructor for the Platform class.
     */
    virtual ~Platform() = default;

    /**
     * @brief Gets the ID of the platform.
     * 
     * @return The ID of the platform.
     */
    int getID() override;

    /**
     * @brief Gets the type of the actor.
     * 
     * @return The type of the actor (PLATFORM).
     */
    Type getType() const override { return PLATFORM; }
};