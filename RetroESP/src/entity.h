#pragma once
#include "Object.h"

//#include "actor.h"
//#include "platform.h"
class Projectile;
typedef enum {
    health,
    attack,
    defense,
    speed,
    dir
} types;

// typedef enum {
//     north,
//     south,
//     east,
//     west
// } direction;



typedef struct {
    int maxHealth;
    int maxAttack;
    int maxDefense;
    int maxSpeed;
}defaultValues;


class Entity : public Object{
public:
    Entity(const int* entitySprites,int range,int x,int y);
    virtual ~Entity() = default;
    void set(types type, int value);
    int get(types type);
    bool getIsGrounded();
    void setIsGrounded(bool ground);
    void attack();
    void jump();
    virtual Projectile* makeProjectile() = 0;
    friend class Game;

protected:
    int hp; //Health
    int atk; //Dmg 
    int defense;    //Protection
    bool isRanged;
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
};