## Coursera Getting and Cleaning Data
# Peer-graded Assignment: Getting and Cleaning Data Course Project

The files in this repository are a tidy summary of the UCI HAR Dataset, including the script used to generate the summary and a codebook that explains what's in the file.

This repository contains 3 files (not including this README): do_anaysis.R, tidyData.csv, and codebook.md.

The file codebook.md describes the variables and calculated summaries.

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
