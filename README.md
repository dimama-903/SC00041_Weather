# Weather Data Visualization

## Purpose
The purpose of the script is to visualize weather data across multiple years using a CSV file.It creates one plot per year with two Y-axes with montly percipitation being shown as bars and montly temperature being shown as line plot 

# Instructions for Running Code

## Packages (dependencies) required:
- `renv` (to set up an environment)
- `ggplot2`
- `dplyr`
- `readr`

## Running the script

### Run the script
- create a project-specific environment so that all packages used are tracked for the project. 
- Initialize the environment from the root of the project folder. Run this command in R: renv::init()
- Install required packages
- Update file paths to for the data folder and the folder where you wish the output to be saved.  
- Snapshot the environment to save the versions of dependencies used to renv.lock. Run this command: renv::snapshot() 

### option 1: Using Conda Environment (Recommended)
This is the easiest way to run the code with all required dependencies installed and managed automatically
1. Install Miniconda or Anaconda (https://www.anaconda.com/download)
2. Clone this repository (https://github.com/dimama-903/SC00041_Weather.git) and go the project folder
3. Create the conda environment from the included "weather.yml" file. Activate the environment and run the Rscript.
4. it is a good practice to export the conda environment to ensure reproducibility

#### Activate the environment.
```
conda env create -f weather.yml

conda activate weather_env.yml
```

### option 2: Using local R installation without Conda
1. Make sure R is installed
2. Manually install required packages in R
3. Run the script

### Example code to run the script  
```
R plot_weather.R
```

## What output to expect
Multi-panel plots, one for each year. Each panel of each plot shows 12 months on the x-axis. For each month, a bar representing montly percipitation (right y-axis) and line with points representing average montly temperature (left y-axis) will be shown.

The output is currently saved in "/output/weather_plot.png" but the destination can be changed in the R script.
