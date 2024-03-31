#pragma once
#include "Object.h"
//#include "actor.h"
//#include "platform.h"

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
    //void manageAnimation();
    friend class Game;

protected:
    int hp; //Health
    int atk; //Dmg 
    int defense;    //Protection
    // float ySpeed;
    // float xSpeed;
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
    //bool isGrounded;
    // const int* entitySprites; //Sprite ID
    // state myState;
    // int spriteCounter;
};