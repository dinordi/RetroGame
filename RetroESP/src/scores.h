#pragma once
#include <iostream>
#include <string>
#include <stdio.h>
#include <string.h>
#include <cstring> // for strstr
#include <vector>
#include <array>
#include <algorithm>
#include <zephyr/storage/flash_map.h>
#include <zephyr/drivers/flash.h>
#include <zephyr/devicetree.h>
#include <zephyr/device.h>
#include <zephyr/kernel.h>
#include <sstream>
#include "flash_esp32.h"



class Score
{
public:
    Score(Flash_esp* flash_esp);
   ~Score();
public:
    void assign_boss_points();
    void assign_monster_points();
    void set_time_points();
    void assign_time_points();
     //add transistion for reseting the multiplier when it is done
    void set_multiplier();
    void decrease_multiplier(int time_sim);
public:
    void get_leaderboard();
    std::string receive_Scores(int i);
    void reset_leaderboard();
    void write_leaderboard();
    void compare_leaderboard();
private:
    int time_multiplier = 100;
    int monster_exp = 1000;  // base points without multiplier
    int boss_exp    = 10000; // base points without multiplier
private:
    int time = 0;
    int second_decrease = 35; 
    int current_score = 0; // gamescore
    int time_score =0;
    bool high_score = false;
private:   
    std::string leader_board;
    int compare_score;
    char *player_and_score[10]; // Array to store the split strings
    char *store_new_score;
    int replace_score =0;
    void move_down_leaderboard();
private:
    Flash_esp *flash_esp;


};