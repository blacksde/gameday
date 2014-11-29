gameday
=======

This is the r-package by Zichun Ye, built for assignment 10 for stat 545.

## Install
To install the package, use `devtools::install_github("blacksde/gameday")`.

## Function


1. `gday`
   - parameter: `team` and `date`;
   - return: Logical. `TRUE` if `team` has a NHL game on `date`, `FALSE` otherwise.
  
2. `scores`
   - parameter: `date`;
   - return: a date frame with game place, home team, away team, home score, away score and whether the game is completed.
  
3. `info_team`
   - parameter: `team`;
   - return: a date frame with information about arean, team, lat and long
  
## Dataset

1. arena_team: information about arean, team, lat and long


## Simple example
* check whether Canucks on Nov 19 2014: `gday(team="canucks",date = "2014-11-19")`;
* check the score of all games in Nov 19 2014: `score("2014-11-19)`;
* check the information of team in New York: `info_team("New York")`.

## Vignettes
After installing the package, you can view the vignettes by: `browseVignettes(package = "gameday")`. 

If you can't wait, I prepare a pdf file for you [here](https://github.com/blacksde/gameday/blob/master/vignettes/gameday.pdf).





