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
  printk("score= %d\n",time_score);

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
   leader_board = flash_esp->read_esp_flash();
   printk("leaderboard : %d\n",leader_board.size());
  // Dynamically allocate memory for the C-style string
  char* inputString = new char[leader_board.size() + 1];

  // Copy the contents of leader_board to inputString
  strcpy(inputString, leader_board.c_str());

 

  int index = 0;
  printk("get score");
  // Tokenize the input string by space
  char* token = strtok(inputString, "&");
  while (token != NULL && index < 100) {
    player_and_score[index++] = token;
    token = strtok(NULL, "&");
    printk("test");
  }
}

// compare the player score with the leader board
void Score::compare_leaderboard()
{
    for (size_t i = 0; i < player_and_score.size(); ++i) {
        // Find the location of "score: " in player_and_score[i]
        size_t pos = player_and_score[i].find("score ");

        if (pos != std::string::npos) {
            // Get the substring starting from index pos + 6 (to skip "score: ")
            std::string score_string = player_and_score[i].substr(pos + 6);

            // Convert the substring to an integer
            compare_score = std::stoi(score_string);

            

            if (current_score > compare_score) {
                std::cout << "Highscore achieved. Place: " << i + 1 << std::endl;
                current_score = compare_score; // Update current_score with the new high score

                high_score = true;
                compare_score = current_score;
                replace_score = i;
                break; // Break after finding the first high score
            }
        }
        else {
            std::cout << "Substring 'score: ' not found in entry " << i << std::endl;
        }

    }
}

void Score::move_down_leaderboard()
{

  // Start moving elements from the end towards the replace_score position
  printk("replace player: %d\n", replace_score);
  
  for (int i = 9; i > replace_score; i--) {
    player_and_score[i] = player_and_score[i - 1];
  }
}
void Score::write_leaderboard()
{
  /*
  const char* cString;
  std::string new_leaderboard;
  std::string player_name = "Highscore";
  // check if read is empty

  // Assuming replace_score is a valid index
  if (high_score) {
    // move all scores down that are below the new highscore
    move_down_leaderboard();
    // Create a C++ string
    std::string new_score_str = player_name + ": " + std::to_string(current_score);
    // Create a vector to hold the characters of the C++ string
    std::vector<char>c_string(new_score_str.begin(),new_score_str.end());
    c_string.push_back('\0'); // Add null terminator

    // Output the C string
    printk("c sr: %s\n", c_string.data());
    player_and_score[replace_score] = c_string.data();
    
  }
  // Concatenate the strings
  // printk("size = %d",size);

    printk("%s\n\n",player_and_score[1]);
  if (player_and_score[0] != nullptr) {
    for (int i = 0; i < 10; ++i) { // Adjust the loop termination condition  accordingly

      new_leaderboard += player_and_score[i];
      new_leaderboard += '&'; // Add the '&' delimiter
    }

    cString = new_leaderboard.c_str();
    printk("print new leades \n");
     printk("%s\n",cString);
     std::string cppstr(cString);

     flash_esp->write_string(cppstr);
  }*/
  
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