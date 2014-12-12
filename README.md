---
title: "ReadMe"
output: html_document

# Getting and Cleaning Data - Course Project
This repository hosts the R code and documentation files for the Coursera course  "Getting and Cleaning data".

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 


## Files in the repository

* README.md - This file
* CodeBook.md describes the data, transformations performed and the variables used 
* run_analysis.R contains the code to perform the transformations
* averages_data.txt is the sample output from the script


## Execution
To run the script, source the script into your working directory  
```
source('run_analysis.R')
```

To view the result, load the data from the working directory using
```
result <- read.table("averages_data.txt", header=TRUE)
head(result)
```
## Script Functions
The run_analysis.R script performs the following operations:

1. Merge the measurement, activity and subject data from the test and training datsets into combined datasets.
    + 1.1 Set the path names
    + 1.2 Read all data sets
    + 1.3 Merge test & training datasets into combined datasets
2. Select only data columns containing mean and standard deviation data
3. Clean up the namess to make them more readable
    + 3.1 Replace column names with more readable column names
    + 3.2 Replace numeric activity codes with activity names
4. Merge subject, activity and observation data into one dataset
    + 4.1 Add column names for subject and activity
    + 4.2 Merge the measurement, subject and activity data into one dataset
5. Create the tidy dataset
    + 5.1 Calculate the mean value of each measurment for each subject/activity combination
    + 5.2 Write the final dataframe to a file
    

The output from this transformation is written to "averages_data.txt" in the working directory.
