#pragma once

typedef enum {
    idle,
    walking,
    jumping,
    attacking
} state;

class Actor {
public:
    Actor(int* entitySprites);
    void m(int x, int y);
    int getX();
    int getY();
    int getID();
    void manageAnimation();

private:
    int x;
    int y;
    int ID;
    int* entitySprites; //Sprite ID
    state myState;
    int spriteCounter;
};