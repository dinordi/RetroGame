#pragma once
#include "actor.h"

typedef enum {
    idle,
    walking,
    jumping,
    attacking,
    flying,
    hit,
    dead
} state;

class Object : public Actor{

    public:

    Object(const int* entitySprites,int range,int x ,int y);
    int getxSpeed();
    int getySpeed();
    void updateySpeed(float speed);
    void setySpeed(float speed);
    virtual void manageAnimation();
    virtual void behaviour();
    state getState() const { return myState; }
    virtual bool collisionWith(int damage);
    // int getState() const { return myState; }
    friend class Game;
    
protected:
    float ySpeed;
    float xSpeed;
    const int* entitySprites; //Sprite ID
    state myState;
    state lastmyState;
    int spriteCounter;
    bool isFacingRight;
    bool hasGravity;
    bool hasCollision;
    bool isGrounded;
    int damage;
    
};
