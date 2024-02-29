#pragma once


class Actor {
public:
    Actor(int ID);
    void move(int x, int y);
    int getX();
    int getY();
private:
    int x;
    int y;
    int ID; //Sprite ID
};