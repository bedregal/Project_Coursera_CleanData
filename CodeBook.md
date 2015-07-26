---
title: "CodeBook for the data cleaning and analysis "Human Activity Recognition Using Smartphones" data set."
author: "Alejandro G. Bedregal"
date: "July 26 2015"
output: html_document
---

**Study Design**
The raw data was collected from the "Human Activity Recognition Using Smartphones" data set. This data is public available in this webpage: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset was built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.
In our study we present a tidy version of this dataset. We select the mean and standard deviation (std) for each of the parameters measured in each of the individual observations (rows). Then, we estimate the AVERAGE among all the observations for a given Activity (1:6, see description below) and Subject (30 test subjects numberd from 1 to 30). This tidy dataset is presented in the "tidy_dataset.txt" file.

**Activity Code**
Six (6) different activities were preformed by the test Subjects in this study. While in the raw dataset they are just flagged with 1:6 numbers, we decide to use more meaningfull names for each one. Below are the assigned Activity names and its meaning:

        1 = "walk" : Walking
        2 = "walk_up" : Walking Upstairs
        3 = "walk_down" : Walking Downstairs
        4 = "sit" : Sitting
        5 = "stand" : Standing up
        6 = "lay" : Laying down
        

        
**Code Book**

As a general remark, besides the variables "Subject" and "Activity", all the other quantities are AVERAGES of a given feature in the raw data for a given subject and activity. Below we briefly describe the specific features in our tidy dataset. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 't' denotes, time-domain, while 'f' denotes frequency-domain.


Subject : Code number identifying each of the 30 subjects used for these measurements.
Activity : Each of the 6 different activities performed by the subjects: Walking, walkimng
            upstairs, walking downstairs, sitting, standing up and laying down.
Avg_tBodyAcc-mean()-XYZ : Mean body acceleration signal.
Avg_tGravityAcc-mean()-XYZ : Mean gravity acceleration signal.
Avg_tBodyAccJerk-mean()-XYZ : Mean body acceleration Jerk signal.
Avg_tBodyGyroJerk-mean()-XYZ : Mean body angular velocity Jerk signal.
Avg_tBodyAccMag-mean() : Mean magnitude of three-dimensional Body Acceleration using
                          Euclidean norm.
Avg_tGravityAccMag-mean() : Mean magnitude of three-dimensional Gravity Acceleration using
                             Euclidean norm.
Avg_tBodyAccJerkMag-mean() : Mean magnitude of three-dimensional Body Acceleration Jerk
                              signal using Euclidean norm.
Avg_tBodyGyroMag-mean() : Mean magnitude of three-dimensional Body angular velocity using
                           Euclidean norm.
Avg_tBodyGyroJerkMag-mean() : Mean magnitude of three-dimensional Body angular velocity 
                               Jerk signal using Euclidean norm.
Avg_fBodyAcc-meanFreq()-XYZ : Mean body acceleration signal in FREQUENCY domain.
Avg_fBodyAccJerk-meanFreq()-XYZ : Mean body acceleration Jerk signal in FREQUENCY domain.
Avg_fBodyGyro-meanFreq()-XYZ : Mean body angular velocity in FREQUENCY domain.
Avg_fBodyGyroJerk-meanFreq()-XYZ : Mean body angular velocity Jerk signal in FREQUENCY 
                                    domain.
Avg_ftBodyGyroMag-meanFreq() : Mean magnitude of three-dimensional Body angular velocity
                                using Euclidean norm in FREQUENCY domain.
Avg_fBodyGyroJerkMag : Mean magnitude of three-dimensional Body angular velocity Jerk 
                        signal using Euclidean norm in FREQUENCY domain.


Avg_tBodyAcc-std()-XYZ : Std body acceleration signal.
Avg_tGravityAcc-std()-XYZ : Std gravity acceleration signal.
Avg_tBodyAccJerk-std()-XYZ : Std body acceleration Jerk signal.
Avg_tBodyGyroJerk-std()-XYZ : Std body angular velocity Jerk signal.
Avg_tBodyAccMag-std() : Std magnitude of three-dimensional Body Acceleration using
                          Euclidean norm.
Avg_tGravityAccMag-std() : Std magnitude of three-dimensional Gravity Acceleration using
                             Euclidean norm.
Avg_tBodyAccJerkMag-std() : Std magnitude of three-dimensional Body Acceleration Jerk
                              signal using Euclidean norm.
Avg_tBodyGyroMag-std() : Std magnitude of three-dimensional Body angular velocity using
                           Euclidean norm.
Avg_tBodyGyroJerkMag-std() : Std magnitude of three-dimensional Body angular velocity 
                               Jerk signal using Euclidean norm.
Avg_fBodyAcc-stdFreq()-XYZ : Std body acceleration signal in FREQUENCY domain.
Avg_fBodyAccJerk-stdFreq()-XYZ : Std body acceleration Jerk signal in FREQUENCY domain.
Avg_fBodyGyro-stdFreq()-XYZ : Std body angular velocity in FREQUENCY domain.
Avg_fBodyGyroJerk-stdFreq()-XYZ : Std body angular velocity Jerk signal in FREQUENCY 
                                    domain.
Avg_ftBodyGyroMag-stdFreq() : Std magnitude of three-dimensional Body angular velocity
                                using Euclidean norm in FREQUENCY domain.
Avg_fBodyGyroJerkMag : Std magnitude of three-dimensional Body angular velocity Jerk 
                        signal using Euclidean norm in FREQUENCY domain.

