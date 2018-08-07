## Coursera Getting and Cleaning Data
## Peer-graded Assignment: Getting and Cleaning Data Course Project
##
## This script:
## - Merges data from the "test" and "train" directories
## - Extracts the means and standard deviations for each measurement
## - Labels each row with  more understandable activity names
## - Labels the columns with a understandable "feature" name
## - Summarizes data by subject and activity
## - Writes the resulting table to a CSV file

## Usage:  source("run_analysis.R")
## Script must be run in the "UCI HAR Dataset" directory of the unzipped dataset

## Download and extract the raw data (beware: this takes up >200 MB of disk space)
print("Downloading the data")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","dataset.zip")
print("Unzipping the file")
unzip("dataset.zip")

# Read in the data
print("Reading the data")
xTestData     <- read.table("UCI HAR Dataset/test/X_test.txt")
xTrainData    <- read.table("UCI HAR Dataset/train/X_train.txt")
TestSubjects  <- read.table("UCI HAR Dataset/test/subject_test.txt")
TrainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
yTestData     <- read.table("UCI HAR Dataset/test/Y_test.txt")
yTrainData    <- read.table("UCI HAR Dataset/train/Y_train.txt")

# Add subjects and Y do each data table, then merge them
print("Performing analysis")
mergedTest  <- cbind(TestSubjects, yTestData, xTestData) 
mergedTrain <- cbind(TrainSubjects, yTrainData, xTrainData) 
mergedData  <- rbind(mergedTest,mergedTrain)

# Get the column names and tidy them up a bit
ColNames     <- read.table("UCI HAR Dataset/Features.txt",stringsAsFactors = FALSE)
tidyColNames <- gsub("-",".",ColNames[,2])
tidyColNames <- gsub("^f","frequency.",tidyColNames)
tidyColNames <- gsub("^t","time.",tidyColNames)

# Name the columns using "Features.txt"
names(mergedData)<-c("subject","y",tidyColNames)

# Select only those columns that contain the words "mean()" or "std()"
meanData <- mergedData[,c(1,2,grep("mean\\(\\)|std\\(\\)",names(mergedData)))]
names(meanData) <- gsub("\\(\\)","",names(meanData))

# Label rows with the activity name
actLab <- read.table("UCI HAR Dataset/activity_labels.txt")
meanData$activity <- actLab[meanData$y,2]
meanData$y <- NULL  # get rid of the old "y" column 

# Group and summarize data
library(dplyr)
groupedData <- group_by(meanData, subject, activity)
summarizedData <- summarize_all(groupedData,funs(mean))

# Write the tidy data to a CSV file
print("writing results to tidyData.csv")
write.table(summarizedData,file="tidyData.csv", sep=",", row.name=FALSE)
