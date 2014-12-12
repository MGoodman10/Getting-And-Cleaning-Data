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

