# Weather Data Visualization

## Purpose
The purpose of the script is to visualize weather data across multiple years using a CSV file.It creates one plot per year with two Y-axes with montly percipitation being shown as bars and montly temperature being shown as line plot 

## Instructions for Running Code

### Packages (dependencies) required:
- renv (to set up an environment)
- ggplot2
- dplyr 
- readr


### Run the script
- create a project_specific environment so that all packages used are tracked for the project. 
- Initialize the environment from the root of the project folder. Run this command in R: renv::init()
- Install required packages
- Snapshot the environment to save the versions of dependencies used to renv.lock. Run this command: renv::snapshot() 

## What output to expect
Multi-panel plots, one for each year. Each panel of each plot shows 12 months on the x-axis. For each month, a bar representing montly percipitation (right y-axis) and line with points representing average montly temperature (left y-axis) will be shown.
