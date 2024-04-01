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
    Entity(const int* entitySprites,int range,int,int);
    virtual ~Entity() = default;
    void set(types type, int value);
    int get(types type);
    bool getIsGrounded();
    void setIsGrounded(bool ground);
    void attack();
    void jump();
<<<<<<< HEAD
    virtual Projectile* makeProjectile() = 0;
=======
    //void manageAnimation();
>>>>>>> 1e47a9826e59f640d90ac35b3239c32728adeb38
    friend class Game;

protected:
    int hp; //Health
    int atk; //Dmg 
    int defense;    //Protection
<<<<<<< HEAD
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
=======
    // float ySpeed;
    // float xSpeed;
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
    //bool isGrounded;
    // const int* entitySprites; //Sprite ID
    // state myState;
    // int spriteCounter;
>>>>>>> 1e47a9826e59f640d90ac35b3239c32728adeb38
};