---
title: "ReadMe"
output: html_document

# Getting and Cleaning Data - Course Project
This repository hosts the R code and documentation files for the Coursera course  "Getting and Cleaning data".

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Original source
Information about the original data is located at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Information for this project was downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

**NOTE** The R script assumes the file is downloaded into a "./UCI HAR Dataset" directory and unzipped without altering the sub-directory and file names.  If this is not true the R script will need to be edited to update the file names and locations in section 1.1 and 1.2 of the script.

## Files

* ReadMe.md - This file
* CodeBook.md describes the variables.
* run_analysis.R contains the code to perform the transformations
* averages_data.txt is the sample output from the script

## Transformations
The run_analysis.R script performs the following transformations:

1. Merge the measurement, activity and subject data from the test and training datsets into a combined dataset.
2. Select only data columns containing mean and stand deviation data
3. Replace column names with more readable column names
4. Replace numeric activity codes with activity names
5. Merge subject, activity and observation data into one dataset
6. Calculate the mean value of each measurment for each subject/activity combination

The output from this transformation is written to averages_data.txt in the working directory.

## Execution
To run the script, source run_analysis.R into your working directory  
To view the result, load the data using
```
result <- read.table("averages_data.txt", header=TRUE)
head(result)
```

