#include "scores.h"
#include <cstddef>
#include <cstdint>
#include <string>
#include <sstream>
#define FPS 60

Score::Score(Flash_esp* flash_esp)
  : flash_esp(flash_esp)
{

}
Score::~Score() {}

//  receiving 60 fps so 1 second is 60
//  decrease multiplier every 30 seconds if the multiplier is not already 1
void Score::decrease_multiplier(int time_sim)
{
  time = time + time_sim;

  if (time_multiplier > 1) {
    if (time == FPS * second_decrease) {
      time = 0;
      time_multiplier--;
    }
  }
}
void Score::set_multiplier()
{
time_multiplier = 100;

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

void Score::get_leaderboard()
{
  if(execute_get_once){
  execute_get_once = false;
    leader_board = flash_esp->read_esp_flash();
    printk("leaderboard : %zu\n", leader_board.size());
    
    // Use std::stringstream to tokenize the string
    std::stringstream ss(leader_board);
    std::string token;

    printk("get score");
    // Tokenize the input string by '&' delimiter
    while (std::getline(ss, token, '&') && player_and_score.size() < 100) {
        player_and_score.push_back(token);
        printk("test");
    }
    printk("nothing");
  }
}

// compare the player score with the leader board
void Score::compare_leaderboard()
{
  if(execute_compare_once){
    execute_compare_once = false;
    printk("compare");
    for (size_t i = 0; i < player_and_score.size(); ++i) {
        // Find the location of "score: " in player_and_score[i]
        size_t pos = player_and_score[i].find("score ");

        if (pos != std::string::npos) {
            // Get the substring starting from index pos + 6 (to skip "score: ")
            std::string score_string = player_and_score[i].substr(pos + 6);

            // Convert the substring to an integer
            compare_score = std::stoi(score_string);

            
            //printk("current_score : %d\n",current_score);
            if (current_score > compare_score) {
                //std::cout << "Highscore achieved. Place: " << i + 1 << std::endl;
                current_score = compare_score; // Update current_score with the new high score

                high_score = true;
                compare_score = current_score;
                replace_score = i;
                break; // Break after finding the first high score
            }
        }
        else {
           printk("not found\n");
        }
      
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
  if(execute_write_once){
    execute_write_once =false;
   std::string new_leaderboard;
    std::string player_name = "M Highscore";

    if (high_score) {
        move_down_leaderboard();

        // Create a new score string
        std::string new_score_str = player_name + ": " + std::to_string(current_score);

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
        printk("New leaderboard:\n%s\n", cString);

        // Write the new leaderboard to flash
        flash_esp->write_string(new_leaderboard);
    }
  }
}

std::string Score::receive_Scores(int i)
{
  // Create a stringstream to store the concatenated strings
    
    

     return player_and_score[i];
}

std::string Score::currentscore_string()
{

  return std::to_string(current_score);
}

bool Score::higscore_state()
{
return high_score;
}