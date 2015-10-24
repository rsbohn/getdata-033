# Getting and Cleaning Data getdata-033
Course Project
Randall Bohn
October 25 2015

# Introduction
This document describes the dataset extracted from [1] and presented in the file subject1-means.txt. The submitted file contains the mean means 
and mean standard deviations for six activities for study subject #1.

# Variables
Variables with ...X, ...Y, and ...Z are three part vectors in the X, Y and Z spatial dimensions. All variables in the submitted file are averages for the variables
in the raw data.

tBodyAcc.mean...X, Y, Z: average body acceleration
tGravityAcc.mean...X, Y, Z: average gravity
tBodyAccJerk.mean...X, Y, Z: average body jerk
tBodyGyro.mean...X, Y, Z: average body gyroscope 
tBodyGyroJerk.mean...X, Y, Z: average body gyroscope jerk

tBodyAccMag.mean: average body acceleration magnitude
tGravityAccMag.mean:
tBodyAccJerkMag.mean:
tBodyGyroMag.mean:
tBodyGyroJerkMag.mean:

fBodyAcc.mean...X, Y, Z:
fBodyAccJerk.mean...X, Y, Z:
fBodyGyro.mean...X, Y, Z:

fBodyAccMag.mean:
fBodyBodyAccJerkMag.mean:
fBodyBodyGyroMag.mean:
fBodyBodyGyroJerkMag.mean:

tBodyAcc.std...X, Y, Z:
tGravityAcc.std...X, Y, Z:
tBodyAccJerk.std...X, Y, Z:
tBodyGyro.std...X, Y, Z:
tBodyGyroJerk.std...X, Y, Z:

tBodyAccMag.std:
tGravityAccMag.std:
tBodyAccJerkMag.std:
tBodyGyroMag.std:
tBodyGyroJerkMag.std:

fBodyAcc.std...X, Y, Z:
fBodyBodyAccJerk.std...X, Y, Z:
fBodyGyro.std...X, Y, Z:
fBodyAccMag.std:
fBodyBodyAccJerkMag.std:
fBodyBodyGyroMag.std:
fBodyBodyGyroJerkMag.std:

Note: These variable names were sanitized by write.table.


# Description of the data
The variables as noted above provide measurements of movement as described in [1].
The measurements were taken on 30 human subjects. Each row measures the indicated
activity: LAYING, SITTING, STANDING, WALKING, WALKING DOWNSTAIRS or WALKING_UPSTAIRS.




# Raw Dataset
Human Activity Recognition Using Smartphones Dataset
Version 1.0 [1]

Downloaded https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
on October 24 2015.
# References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012