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
    Entity(int ID);
    void set(types type, int value);
    int get(types type);
    void attack();
    void jump();

private:
    int hp; //Health
    int atk; //Dmg 
    int defense;    //Protection
    int speed;
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
    direction dir;  //Facing direction
};