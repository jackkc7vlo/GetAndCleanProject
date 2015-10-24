# GetAndCleanProject
##Getting And Cleaning Coursera Class Project

### The purpose of this project is to perform the following steps on data collected from the accelerometers from the Samsung Galaxy S smartphone. 
You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

####For convienence all data files are checked into the data subfolder.  If needed that can be obtained from the course web site at
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
The files used from the dataset are:
* activity_labels.txt
* features.txt
* subject_test.txt
* subject_train.txt
* X_test.txt
* X_train.txt
* Y_text.txt
* Y_train.txt

####The output is a data.table in wide format of the tidy data and is contains in the file tidy.txt.
This can be easily read into R using

'tidyData <- read.table("./data/tidy.txt")'



