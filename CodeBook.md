---
title: "CodeBook"
output: html_document
---
## Original data source information
#### Location
Information about the original data is located at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Information for this project was downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

**NOTE:** The R script assumes the file is downloaded into a "./UCI HAR Dataset" directory and unzipped without altering the sub-directory and file names.  If this is not true, the R script will need to be edited to update the file names and locations in section 1.1 and 1.2 of the script.

#### Attribution

Human Activity Recognition Using Smartphones Dataset  
Version 1.0 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
http://www.smartlab.ws  

#### Data collection details

Detailed information about the experiment and the data collection can be found in the "README.txt" file that will unzip with the rest of the data.

## Transformations

The run_analysis.R script performs the following transformations:

1. Merge the measurement, activity and subject data from the test and training datsets into a combined dataset.
2. Select only data columns containing mean and standard deviation data
3. Replace column names with more readable column names
4. Replace numeric activity codes with activity names
5. Merge subject, activity and observation data into one dataset
6. Calculate the mean value of each measurment for each subject/activity combination

The output from this transformation is written to "averages_data.txt" in the working directory.

## Variables

#### Subject

Each subject is identifed by there unique integer subject ID.

#### Activity

Each subject includes 1 to 5 activities.  Activities are character strings with one of the following values:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

#### Measurement Statistics

Each statistic is the mean value of the original observation data for each subject/activity pair.  Each variable is either the mean of means (i.e.,
variables with "Mean" near the end of their name) or the mean of standard deviations (i.e., variables with "StdDev" near the end of their name) for a subject/activity combiniation. All values are numeric.

#### Units of measure

* Detailed iinformation on the unnits of measure are included in the "features_info.txt" file that will unzip with the rest of the data  
* Original observations are normalized and bounded within [-1,1].

#### Measurement variables included in the final dataset

* Time domain body acceleration mean along X, Y, and Z:
    + MeanTimeBodyAccMeanX
    + MeanTimeBodyAccMeanY
    + MeanTimeBodyAccMeanZ
* Time domain body acceleration standard deviation along X, Y, and Z:
    + MeanTimeBodyAccStdDevX
    + MeanTimeBodyAccStdDevY
    + MeanTimeBodyAccStdDevZ
* Time domain gravity acceleration mean along X, Y, and Z:
    + MeanTimeGravityAccMeanX
    + MeanTimeGravityAccMeanY
    + MeanTimeGravityAccMeanZ
* Time domain gravity acceleration standard deviation along X, Y, and Z:
    + MeanTimeGravityAccStdDevX
    + MeanTimeGravityAccStdDevY
    + MeanTimeGravityAccStdDevZ
* Time domain body jerk mean along X, Y, and Z:
    + MeanTimeBodyAccJerkMeanX
    + MeanTimeBodyAccJerkMeanY
    + MeanTimeBodyAccJerkMeanZ
* Time domain body jerk standard deviation along X, Y, and Z:
    + MeanTimeBodyAccJerkStdDevX
    + MeanTimeBodyAccJerkStdDevY
    + MeanTimeBodyAccJerkStdDevZ
* Time domain gyroscope mean along X, Y, and Z:
    + MeanTimeBodyGyroMeanX
    + MeanTimeBodyGyroMeanY
    + MeanTimeBodyGyroMeanZ
* Time domain gyroscope standard deviation along X, Y, and Z:
    + MeanTimeBodyGyroStdDevX
    + MeanTimeBodyGyroStdDevY
    + MeanTimeBodyGyroStdDevZ
* Time domain gyroscope jerk mean along X, Y, and Z:
    + MeanTimeBodyGyroJerkMeanX
    + MeanTimeBodyGyroJerkMeanY
    + MeanTimeBodyGyroJerkMeanZ
* Time domain gyroscope jerk standard deviation along X, Y, and Z:
    + MeanTimeBodyGyroJerkStdDevX
    + MeanTimeBodyGyroJerkStdDevY
    + MeanTimeBodyGyroJerkStdDevZ
* Time domain body acceleration magnitude mean:
    + MeanTimeBodyAccMagMean
* Time domain body acceleration magnitude standard deviation:
    + MeanTimeBodyAccMagStdDev
* Time domain gravity acceleration magnitude mean:
    + MeanTimeGravityAccMagMean
* Time domain gravity acceleration magnitude standard deviation:
    + MeanTimeGravityAccMagStdDev
* Time domain body jerk magnitude mean:
    + MeanTimeBodyAccJerkMagMean
* Time domain body jerk magnitude standard deviation:
    + MeanTimeBodyAccJerkMagStdDev
* Time domain gyroscope magnitude mean:
    + MeanTimeBodyGyroMagMean
* Time domain gyroscope magnitude standard deviation:
    + MeanTimeBodyGyroMagStdDev
* Time domain gyroscope jerk magnitude mean:
    + MeanTimeBodyGyroJerkMagMean
* Time domain gyroscope jerk magnitude standard deviation:
    + MeanTimeBodyGyroJerkMagStdDev
* Frequency domain body acceleration mean along X, Y, and Z:
    + MeanFrequencyBodyAccMeanX
    + MeanFrequencyBodyAccMeanY
    + MeanFrequencyBodyAccMeanZ
* Frequency domain body acceleration standard deviation along X, Y, and Z:
    + MeanFrequencyBodyAccStdDevX
    + MeanFrequencyBodyAccStdDevY
    + MeanFrequencyBodyAccStdDevZ
* Frequency domain body jerk mean along X, Y, and Z:
    + MeanFrequencyBodyAccJerkMeanX
    + MeanFrequencyBodyAccJerkMeanY
    + MeanFrequencyBodyAccJerkMeanZ
* Frequency domain body jerk standard deviation along X, Y, and Z:
    + MeanFrequencyBodyAccJerkStdDevX
    + MeanFrequencyBodyAccJerkStdDevY
    + MeanFrequencyBodyAccJerkStdDevZ
* Frequency domain gyroscope mean along X, Y, and Z:
    + MeanFrequencyBodyGyroMeanX
    + MeanFrequencyBodyGyroMeanY
    + MeanFrequencyBodyGyroMeanZ
* Frequency domain gyroscope standard deviation along X, Y, and Z:
    + MeanFrequencyBodyGyroStdDevX
    + MeanFrequencyBodyGyroStdDevY
    + MeanFrequencyBodyGyroStdDevZ
* Frequency domain body acceleration magnitude mean:
    + MeanFrequencyBodyAccMagMean
* Frequency domain body acceleration magnitude standard deviation:
    + MeanFrequencyBodyAccMagStdDev
* Frequency domain body jerk magnitude mean:
    + MeanFrequencyBodyAccJerkMagMean
* Frequency domain body jerk magnitude standard deviation:
    + MeanFrequencyBodyAccJerkMagStdDev
* Frequency domain gyroscope magnitude mean:
    + MeanFrequencyBodyGyroMagMean
* Frequency domain gyroscope magnitude standard deviation:
    + MeanFrequencyBodyGyroMagStdDev
* Frequency domain gyroscope jerk magnitude mean:
    + MeanFrequencyBodyGyroJerkMagMean
* Frequency domain gyroscope jerk magnitude standard deviation:
    + MeanFrequencyBodyGyroJerkMagStdDev