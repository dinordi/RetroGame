/**
 * @file scores.h
 * @brief This file contains the Score class and related functionality for score and leaderboard management.
 */


#pragma once

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
#include "flash_esp32.h"

/**
 * @class Score
 * @brief Represents the score and leaderboard functionality of the game.
 */
class Score
{
public:
    /**
     * @brief Constructs a Score object.
     * @param flash_esp A pointer to the Flash_esp object.
     */
    Score(Flash_esp* flash_esp);

    /**
     * @brief Destructs the Score object.
     */
    ~Score();

public:
    /**
     * @brief Assigns points for defeating a boss.
     */
    void assign_boss_points();

    /**
     * @brief Assigns points for defeating a monster.
     */
    void assign_monster_points();

    /**
     * @brief Sets the points based on the time taken.
     */
    void set_time_points();

    /**
     * @brief Assigns points based on the time taken.
     */
    void assign_time_points();

    /**
     * @brief Sets the multiplier for the score.
     */
    void set_multiplier();

    /**
     * @brief Decreases the multiplier based on the given time.
     * @param time_sim The time elapsed in the game.
     */
    void decrease_multiplier(int time_sim);

public:
    /**
     * @brief Retrieves the leaderboard.
     */
    void get_leaderboard();

    /**
     * @brief Receives the scores from the leaderboard.
     * @param i The index of the score to receive.
     * @return The score at the specified index.
     */
    std::string receive_Scores(int i);

    /**
     * @brief Resets the leaderboard.
     */
    void reset_leaderboard();

    /**
     * @brief Writes the leaderboard to the storage.
     */
    void write_leaderboard();

    /**
     * @brief Compares the current score with the leaderboard scores.
     */
    void compare_leaderboard();

private:
    int time_multiplier = 100;  ///< The multiplier for the time points.
    int monster_exp = 1000;     ///< The base points for defeating a monster without multiplier.
    int boss_exp = 10000;       ///< The base points for defeating a boss without multiplier. 

private:
    int time = 0;               ///< The time taken in the game. 
    int second_decrease = 35;   ///< The amount of time to decrease the multiplier. 
    int current_score = 0;      ///< The current game score. 
    int time_score = 0;         ///< The score based on the time taken.
    bool high_score = false;    ///< Indicates if the current score is a high score. 

private:   
    std::string leader_board;   ///< The leaderboard string. 
    int compare_score;          ///< The score to compare with the leaderboard scores.
    char *player_and_score[10]; ///< Array to store the split strings. 
    char *store_new_score;      ///< The new score to store in the leaderboard. 
    int replace_score = 0;      ///< The score to replace in the leaderboard. 

    /**
     * @brief Moves down the leaderboard to make space for a new score.
     */
    void move_down_leaderboard();

private:
    Flash_esp *flash_esp;       ///< A pointer to the Flash_esp object. 
};
