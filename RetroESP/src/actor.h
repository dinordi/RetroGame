#pragma once

const float gravity = 0.52f;

class Actor {
public: 
    enum Type {
        ENEMY,
        PLATFORM,
        PLAYER,
        PROJECTILE,
        OBJECT,
        ACTOR
    };
public:
    Actor(int ID,int range,int x, int y);
    int getX();
    int getY();
    void move(float x, float y);
    //void tick();
    virtual bool isPlayer() const { return false; }
    virtual bool isProjectile() const { return false; }
    virtual int getID();
    virtual Type getType() const {return ACTOR;}
    friend class Game;

protected:
    float x;
    float y;
    int range;
    int ID;

};