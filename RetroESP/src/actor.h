/**
 * @file actor.h
 * @brief This file contains the Actor class and related data structures.
 */

#pragma once

const float gravity = 0.52f; ///< Gravity constant for the game world. */

/**
 * @class Actor
 * @brief Class representing an actor in the game.
 *
 * An actor can be an enemy, platform, player, projectile, object, actor, or boss.
 */
class Actor {
public: 
    /**
     * @enum Type
     * @brief Enumeration of possible actor types.
     */
    enum Type {
        ENEMY,      ///< Enemy actor type. */
        PLATFORM,   ///< Platform actor type. */
        PLAYER,     ///< Player actor type. */
        PROJECTILE, ///< Projectile actor type. */
        OBJECT,     ///< Object actor type. */
        ACTOR,      ///< Generic actor type. */
        BOSS        ///< Boss actor type. */
    };

public:
    /**
     * @brief Construct a new Actor object.
     * @param ID Actor's ID.
     * @param range Actor's range.
     * @param x Actor's initial x-coordinate.
     * @param y Actor's initial y-coordinate.
     */
    Actor(int ID,int range,int x, int y);

    /**
     * @brief Get the Actor's x-coordinate.
     * @return int Actor's current x-coordinate.
     */
    int getX();

    /**
     * @brief Get the Actor's y-coordinate.
     * @return int Actor's current y-coordinate.
     */
    int getY();

    /**
     * @brief Move the Actor to a certain position.
     * @param x Move to this x position.
     * @param y move to this y position.
     */
    void move(float x, float y);

    /**
     * @brief Check if the Actor is a player.
     * @return bool True if the Actor is a player, false otherwise.
     */
    virtual bool isPlayer() const { return false; }

    /**
     * @brief Check if the Actor is a projectile.
     * @return bool True if the Actor is a projectile, false otherwise.
     */
    virtual bool isProjectile() const { return false; }

    /**
     * @brief Get the Actor's ID.
     * @return int Actor's ID.
     */
    virtual int getID();

    /**
     * @brief Get the Actor's type.
     * @return Type Actor's type.
     */
    virtual Type getType() const {return ACTOR;}

    friend class Game; ///< Game class can access protected members of Actor. */

protected:
    float x; ///< Actor's x-coordinate. 
    float y; ///< Actor's y-coordinate.
    int range; ///< Actor's range. 
    int ID; ///< Actor's ID. 
};