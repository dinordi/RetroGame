#pragma once

typedef enum {
    idle,
    walking,
    jumping,
    attacking
} state;

class Actor {
public:
    Actor(int ID);
    void m(int x, int y);
    int getX();
    int getY();
    virtual int getID();
    

protected:
    int x;
    float y;
    int ID;

};