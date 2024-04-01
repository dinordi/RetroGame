#pragma once
#include "actor.h"

typedef enum {
    idle,
    walking,
    jumping,
    attacking,
    flying,
    hit
} state;

class Object : public Actor{

    public:

    Object(const int* entitySprites,int range,int x ,int y);
    int getxSpeed();
    int getySpeed();
    void updateySpeed(float speed);
    void setySpeed(float speed);
    void manageAnimation();
    virtual void behaviour();
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
    
};
