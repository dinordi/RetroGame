#pragma once

typedef enum {
    idle,
    walking,
    jumping,
    attacking
} state;

class Actor {
public:
    virtual Actor(const int* entitySprites);
    void m(int x, int y);
    int getX();
    int getY();
    virtual int getID();
    void manageAnimation();

protected:
    int x;
    int y;
    int ID;
    const int* entitySprites; //Sprite ID
    state myState;
    int spriteCounter;
};