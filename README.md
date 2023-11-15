# Coursera-Assignment-Getting-and-Cleaning-Data-Course-Project
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. This repo explains how all of the scripts work and how they are connected.

### The R file 
run_analysis.R
     - This R script performs the following tasks:
     - Downloads and extracts the original data if not already present.
     - Merges training and test sets.
     - Extracts mean and standard deviation measurements.
     - Assigns descriptive activity names.
     - Creates a tidy dataset with the average of each variable for each activity and subject.
     - Writes the tidy dataset to the file tidy_data.txt.

### How to Run the Script
1. Ensure the "dplyr" and "tidyr" packages are installed (`install.packages("dplyr")`, `install.packages("tidyr")`).
2. Run the script "run_analysis.R" in your R environment.

### Output
1. The script will create a file named "tidy_data.txt" containing the tidy dataset.

### Tidy Data Preview
A preview of the first few rows of the tidy dataset is printed at the end of the script execution.
