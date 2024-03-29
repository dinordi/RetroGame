#pragma once

#include "actor.h"
#include "platform.h"

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

class Game;

class Entity : public Actor{
public:
    Entity(const int* entitySprites, Game* game);
    virtual ~Entity() = default;
    void set(types type, int value);
    int get(types type);
    int getxSpeed();
    int getySpeed();
    void updateySpeed(float speed);
    void setySpeed(float speed);
    bool getIsGrounded();
    void setIsGrounded(bool ground);
    void attack();
    void jump();
    void manageAnimation();
    int getID() override;
    friend class Game;

private:
    Game* mygame;
protected:
    int hp; //Health
    int atk; //Dmg 
    int defense;    //Protection
    float ySpeed;
    float xSpeed;
    defaultValues def;  //Maximum values (If character heals, it will not exceed these values)
    bool isFacingRight;
    bool isGrounded;
    const int* entitySprites; //Sprite ID
    state myState;
    int spriteCounter;
};