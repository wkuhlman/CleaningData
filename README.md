## Coursera Getting and Cleaning Data
## Peer-graded Assignment: Getting and Cleaning Data Course Project

This repository contains 3 files (not including this README): do_anaysis.R, tidyData.csv, and codebook.md.

The file codebook.txt describes the variables and calculated summaries.

The file tidyData.csv is a tidy data set output by do_analysis.R

The script do_analyis.R analyzes the data as follows:
- Merges data from the "test" and "train" directories
- Extracts only the mean and standard deviation for each value
- Labels each row with  more understandable activity names
- Labels the columns with a understandable "feature" name
- Summarizes data by subject and activity
- Writes the resulting table to a CSV file

To run the script:
> source("do_analysis.R")
Note: the files are large. Be sure you have a fast internet connection and at least 300 MB of disk space.
