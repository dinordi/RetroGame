#pragma once

#include "actor.h"


typedef enum {
    health,
    attack,
    defense,
    speed,
    dir
} types;

typedef enum {
    north,
    south,
    east,
    west
} direction;



typedef struct {
    int maxHealth;
    int maxAttack;
    int maxDefense;
    int maxSpeed;
}defaultValues;

class Entity : public Actor{
public:
    Entity(const int* entitySprites);
    virtual ~Entity() = default;
    void set(types type, int value);
    int get(types type);
    void attack();
    void jump();
    void setDir(direction d);
    direction getDir();
    void move (int x, int y);
    void tick();
    void manageAnimation();
    int getID() override;


protected:
    int hp; //Health
    int atk; //Dmg 
    int defense;    //Protection
    int ySpeed;
    int xSpeed;
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
    direction myDirection;  //Facing direction
    bool isGrounded;
    const int* entitySprites; //Sprite ID
    state myState;
    int spriteCounter;
};