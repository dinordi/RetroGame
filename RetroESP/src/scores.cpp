#include "scores.h"
#include "zephyr/sys/printk.h"
#include <cstddef>
#include <cstdint>
#include <string>
//#include <sstream>
#define FPS 60

Score::Score(Flash_esp* flash_esp)
  : flash_esp(flash_esp)
{

}
Score::~Score() {}

//  receiving 60 fps so 1 second is 60
//  decrease multiplier every 30 seconds if the multiplier is not already 1
void Score::decrease_multiplier(uint64_t time_sim)
{

if(prevfps - time_sim > 0){
  time++;
}
   //printk("time %d\n",time);

  if (time_multiplier > 1) {

//printk("time to decrease %d\n",FPS * second_decrease);
//printk("time multiplier %d\n",time_multiplier);
    if (time > FPS * second_decrease) {
      time = 0;
      time_multiplier--;
    }
  }
    prevfps = time_sim;

}
void Score::set_multiplier()
{
time_multiplier = 100;

}

void Score::reset_time_points()
{
  time_score = 0;
}

// receive every game tick some points
void Score::assign_time_points()
{

  current_score = current_score + time_score;
}

// receive points when killing a boss
void Score::assign_boss_points()
{
  int calculate_points = boss_exp * time_multiplier;

  current_score = current_score + calculate_points;
}

// receive points when killing a monster
void Score::assign_monster_points()
{
  int calculate_points = monster_exp * time_multiplier;
  //printk("monster points %d\n", calculate_points);
  current_score = current_score + calculate_points;
}

// receive every game tick some points
void Score::set_time_points()
{
  
  time_score = time_score + (time_multiplier * 0.05);
  // printk("score= %d\n",time_score);

}
void Score::reset_leaderboard()
{
 
flash_esp->write_string  (  "M highscore 10000&"
                            "M highscore 9000&"
                            "M highscore 8000&"
                            "M highscore 7000&"
                            "M highscore 6000&"
                            "M highscore 5000&"
                            "M highscore 4000&"
                            "M highscore 3000&"
                            "M highscore 2000&");
}
#include <sstream>
void Score::get_leaderboard()
{

    leader_board = flash_esp->read_esp_flash();
    //printk("leaderboard : %zu\n", leader_board.size());
    
    // Use std::stringstream to tokenize the string
    std::stringstream ss(leader_board);
    std::string token;
    // Tokenize the input string by '&' delimiter
    while (std::getline(ss, token, '&') && player_and_score.size() < 100) {
        player_and_score.push_back(token);
    }
  
}

void Score::compare_leaderboard()
{
    //printk("compare current score %d", current_score);
    for (const auto& player_score : player_and_score) {
        size_t pos = player_score.find("score ");

        if (pos != std::string::npos) {
            compare_score = std::stoi(player_score.substr(pos + 6));

            if (current_score > compare_score) {
                high_score = true;
                compare_score = current_score;
                replace_score = &player_score - &player_and_score[0];  // get the index
                break;
            }
        }
        else {
           // printk("not found\n");
        }
    }
}

void Score::move_down_leaderboard()
{

  // Start moving elements from the end towards the replace_score position
  // printk("replace player: %d\n", replace_score);
  
  for (int i = 9; i > replace_score; i--) {
    player_and_score[i] = player_and_score[i - 1];
  }
}
void Score::write_leaderboard()
{

    std::string new_leaderboard;
    std::string player_name = "M highscore ";

    if (high_score) {
        move_down_leaderboard();

        // Create a new score string
        std::string new_score_str = player_name + std::to_string(current_score);

        // Add the new score to the vector
        player_and_score[replace_score] = new_score_str;
    }

    // Concatenate the strings
    if (player_and_score[0] != "") {
        for (int i = 0; i < 10; ++i) {
            new_leaderboard += player_and_score[i];
            new_leaderboard += '&'; // Add the '&' delimiter
        }

        // Convert the leaderboard to a C-style string and print it
        const char* cString = new_leaderboard.c_str();
        //  printk("New leaderboard:\n%s\n", cString);

        // Write the new leaderboard to flash
        flash_esp->write_string(new_leaderboard);
    }
}

std::string Score::receive_Scores(int i) {
    // Check if index i is within the valid range
    if (i >= 0 && i < player_and_score.size()) {
        // Return the string at index i
        return player_and_score[i];
    } else {
        // Handle index out of bounds
        // For example, you could throw an exception or return an error message
        return "0";
        //throw std::out_of_range("Index out of bounds");
    }
}

std::string Score::currentscore_string()
{
  //printk("current score %d",current_score);
  return std::to_string(current_score);
}

bool Score::higscore_state()
{
  //printk("highscore %d",high_score);
return high_score;
}

void Score::reset_score()
{
  high_score = false;
  printk("reset score");
  printk("current score %d",current_score);
  time_score = 0; 
  current_score = 0;
}