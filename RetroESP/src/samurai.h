#pragma once

#include "Enemy.h"
#include "sprites.h"

/**
 * @brief Enumeration representing the possible states of the Samurai enemy.
 */
typedef enum
{
    waiting,            ///< Waiting state
    patrol,             ///< Patrol state
    spottedPlayer,      ///< Spotted player state
    attackingPlayer     ///< Attacking player state
} SamuraiState;

/**
 * @brief Class representing a Samurai enemy.
 */
class Samurai : public Enemy
{
public:
    /**
     * @brief Constructor for the Samurai class.
     * @param x The x-coordinate of the Samurai's initial position.
     * @param y The y-coordinate of the Samurai's initial position.
     * @param playerX The x-coordinate of the player's position.
     * @param playerY The y-coordinate of the player's position.
     */
    Samurai(int x, int y, int playerX, int playerY);

    /**
     * @brief Default destructor for the Samurai class.
     */
    ~Samurai() = default;

    /**
     * @brief Override function that defines the behavior of the Samurai enemy.
     */
    void behaviour() override;

    /**
     * @brief Override function that checks if the enemy is a player.
     * @return False, as the Samurai enemy is not a player.
     */
    bool isPlayer() const override { return false; }
choco install doxygen.installchoco install doxygen.installchoco install doxygen.install
    /**
     * @brief Override function that checks if the enemy can attack.
     * @param isX Flag indicating whether the attack check is for the x-coordinate.
     * @return The result of the attack check.
     */
    int attackCheck(bool isX) override;

    /**
     * @brief Override function that creates a projectile for the enemy.
     * @return A pointer to the created projectile.
     */
    Projectile* makeProjectile() override;

    /**
     * @brief Override function that manages the animation of the enemy.
     */
    void manageAnimation() override;

    /**
     * @brief Function that checks if the enemy sees the player.
     * @return True if the enemy sees the player, false otherwise.
     */
    bool seesPlayer();

    /**
     * @brief Function that gives the position of the player to enemy.
     * @param x The x-coordinate of the player's position.
     * @param y The y-coordinate of the player's position.
     */
    void setPlayerPos(int x, int y);

    /**
     * @brief Function that handles collision with the enemy.
     * @param damage The amount of damage caused by the collision.
     * @return True if the collision occurred, false otherwise.
     */
    bool collisionWith(int damage);

    /**
     * @brief Override function that returns the type of the enemy.
     * @return The type of the enemy (BOSS).
     */
    Type getType() const override { return Type::BOSS; }

private:
    SamuraiState samState;  ///< The current state of the Samurai enemy.
    int playerX;            ///< The x-coordinate of the player's position.
    int playerY;            ///< The y-coordinate of the player's position.
    bool hit;               ///< Flag indicating if the enemy has been hit.
    friend class Game;      ///< Friend class declaration.
private:
    int hitAnimation;       ///< The animation counter for when the enemy is hit.
};
