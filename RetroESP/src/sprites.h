#pragma once
#include <map>

// const int player1Sprites[5] = {1,1,1,1,1};
// const int enemy1Sprites[5] = {0,0,0,0,0};


const int player1Sprites[13] = {0,1,2,3,2+512,3+512, 115, 116, 117, 115+512, 116+512, 117+512, 4};
const int fatbatSprites[3] = {5,6,55};
const int wherewolfSprites[4] = {9,10,11,12};
                            // Idle _______ Walking _______________________ Attacking    
const int samuraiSprites[17] = {112,113,114,104,105,106,107,108,109,110,111,200, 201, 202, 203, 204, 205};
const int platformIDs[4] = {100,101,102,103};
const int bulletID[1] = {47};
const int empty15x15[1] = {52};

extern std::map<char, int> characters;

void initializeCharacters();
// characters['a'] = 11;
// characters['b'] = 12;
// characters['c'] = 13;
// characters['d'] = 14;
// characters['e'] = 15;
// characters['f'] = 16;
// characters['g'] = 17;
// characters['h'] = 18;
// characters['i'] = 19;
// characters['j'] = 20;
// characters['k'] = 21;
// characters['l'] = 22;
// characters['m'] = 23;
// characters['n'] = 24;
// characters['o'] = 25;
// characters['p'] = 26;
// characters['q'] = 27;
// characters['r'] = 28;
// characters['s'] = 29;
// characters['t'] = 30;
// characters['u'] = 31;
// characters['v'] = 32;
// characters['w'] = 33;
// characters['x'] = 34;
// characters['y'] = 35;
// characters['z'] = 36;
// characters['0'] = 37;
// characters['1'] = 38;
// characters['2'] = 39;
// characters['3'] = 40;
// characters['4'] = 41;
// characters['5'] = 42;
// characters['6'] = 43;
// characters['7'] = 44;
// characters['8'] = 45;
// characters['9'] = 46;

