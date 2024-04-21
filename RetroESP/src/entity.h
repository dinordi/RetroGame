#pragma once
#include "Object.h"
class Projectile;
/**
 * @brief Enumeration of different types of attributes for an entity.
 */
typedef enum {
    health,     ///< Health attribute
    attack,     ///< Attack attribute
    defense,    ///< Defense attribute
    speed,      ///< Speed attribute
    dir         ///< Direction attribute
} types;

/**
 * @brief Structure to hold the maximum values for different attributes.
 */
typedef struct {
    int maxHealth;      ///< Maximum health value
    int maxAttack;      ///< Maximum attack value
    int maxDefense;     ///< Maximum defense value
    int maxSpeed;       ///< Maximum speed value
} defaultValues;

/**
 * @brief Base class for all entities in the game.
 */
class Entity : public Object{
public:
    /**
     * @brief Constructor for the Entity class.
     * @param entitySprites The sprites for the entity.
     * @param range The range of the entity.
     * @param x The x-coordinate of the entity.
     * @param y The y-coordinate of the entity.
     */
    Entity(const int* entitySprites, int range, int x, int y);

    /**
     * @brief Virtual destructor for the Entity class.
     */
    virtual ~Entity() = default;

    /**
     * @brief Set the value of a specific attribute for the entity.
     * @param type The type of attribute to set.
     * @param value The value to set for the attribute.
     */
    void set(types type, int value);

    /**
     * @brief Get the value of a specific attribute for the entity.
     * @param type The type of attribute to get.
     * @return The value of the attribute.
     */
    int get(types type);

    /**
     * @brief Check if the entity is grounded.
     * @return True if the entity is grounded, false otherwise.
     */
    bool getIsGrounded();

    /**
     * @brief Set the grounded state of the entity.
     * @param ground The grounded state to set.
     */
    void setIsGrounded(bool ground);

    /**
     * @brief Perform an attack action.
     */
    void attack();

    /**
     * @brief Perform a jump action.
     */
    void jump();

    /**
     * @brief Perform an attack check.
     * @param isX Flag indicating if the attack is in the X direction.
     * @return The result of the attack check.
     */
    virtual int attackCheck(bool isX);

    /**
     * @brief Create a projectile for the entity.
     * @return A pointer to the created projectile.
     */
    virtual Projectile* makeProjectile();

    friend class Game;

protected:
    int hp;                 ///< Health attribute
    int atk;                ///< Attack attribute
    int defense;            ///< Defense attribute
    bool isRanged;          ///< Flag indicating if the entity is ranged
    defaultValues def;      ///< Maximum attribute values for the entity
};
