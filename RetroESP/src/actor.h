#pragma once


class Actor {
public:
    Actor(int ID,int range,int x, int y);
    int getX();
    int getY();
    void move(float x, float y);
    //void tick();
    virtual bool isPlayer() const { return false; }
    virtual int getID();
    friend class Game;

protected:
    float x;
    float y;
    int range;
    int ID;

};