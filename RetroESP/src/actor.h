#pragma once

typedef enum {
    idle,
    walking,
    jumping,
    attacking
} state;

class Actor {
public:
    Actor(int ID, int range);
    int getX();
    int getY();
    void move(float x, float y);
    //void tick();
    virtual int getID();
    friend class Game;

protected:
    float x;
    float y;
    int range;
    int ID;

};