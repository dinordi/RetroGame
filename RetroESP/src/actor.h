#pragma once


class Actor {
public:
    void move(int x, int y);
    int getX();
    int getY();
private:
    int x;
    int y;
};