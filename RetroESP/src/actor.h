#pragma once


class Actor {
public:
    Actor(int ID);
    void move(int x, int y);
    int getX();
    int getY();
    int getID();
private:
    int x;
    int y;
    int ID; //Sprite ID
};