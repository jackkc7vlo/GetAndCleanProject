# Codebook for Getting and Cleaning Project

###Data Set Code Book: Run_Analysis - Get and clean data collected from the accelerometers from the Samsung Galaxy S smartphone.

October 24, 2015
Codebook prepared by John Wilson for the Coursera Getting and Cleaning Data course

###Variables used in Run_Analysis.R
####subjects_test: 
Numeric numbers representing each of 30 subjects read from the subjects_test.txt file.   
####tab5row: 
First 5 rows read from the X_text.txt file, so the classes of each column code be determined
####classes: 
The type of columns in the file, used when reading the entire file so it is read faster
####X_Test: 
Data table read from the X_Test.txt file that contains all the information collected from the smartphones
####y_test: 
Numeric numbers representing each of 6 activities collected from the smartphones
####test: 
All the test data (subject_test, X_Test, and Y_Test) combined in on data.table
####subjects_train: 
Numeric numbers representing each of 30 subjects read from the subjects_test.txt file.   
####X_Train: 
Data.table read from the X_Test.txt file that contains all the information collected from the smartphones
####y_train: 
Numeric numbers representing each of 6 activities collected from the smartphones
####train: 
All the test data (subject_test, X_Test, and Y_Test) combined in on data.table
####data: 
Test and train added to create a single data table
####labels: 
A vector of all the labels read from features.txt prepended by "Subject" and "Activity" 
####cols: 
A vector of all the columns that contain "subject", "activity", "std()" and "mean()" 
####newData: 
A data.table containing just the columns needed.
####sums: 
The final tidy data set in wide format contains 180 rows (6 activities, 30 subjects), where each column is the mean of the data collected.

##Data in tidy.txt
####Each row contains the following:
* Subject: "integer"
* Activity "character"          
* tBodyAcc-mean()-X: "numeric" 
* tBodyAcc-mean()-Y: "numeric"
* tBodyAcc-mean()-Z: "numeric"
* tBodyAcc-std()-X: "numeric"
* tBodyAcc-std()-Y: "numeric"
* tBodyAcc-std()-Z: "numeric"
* tGravityAcc-mean()-X: "numeric"
* tGravityAcc-mean()-Y: "numeric"
* tGravityAcc-mean()-Z: "numeric"
* tGravityAcc-std()-X: "numeric"
* tGravityAcc-std()-Y: "numeric"
* tGravityAcc-std()-Z: "numeric"
* tBodyAccJerk-mean()-X: "numeric"
* tBodyAccJerk-mean()-Y: "numeric"
* tBodyAccJerk-mean()-Z: "numeric"
* tBodyAccJerk-std()-X: "numeric"
* tBodyAccJerk-std()-Y: "numeric"
* tBodyAccJerk-std()-Z: "numeric"
* tBodyGyro-mean()-X: "numeric"
* tBodyGyro-mean()-Y: "numeric": 
* tBodyGyro-mean()-Z: "numeric"
* tBodyGyro-std()-X: "numeric"
* tBodyGyro-std()-Y: "numeric"
* tBodyGyro-std()-Z: "numeric"
* tBodyGyroJerk-mean()-X: "numeric"
* tBodyGyroJerk-mean()-Y: "numeric"
* tBodyGyroJerk-mean()-Z: "numeric"
* tBodyGyroJerk-std()-X: "numeric"
* tBodyGyroJerk-std()-Y: "numeric":
* tBodyGyroJerk-std()-Z: "numeric"
* tBodyAccMag-mean(): "numeric"
* tBodyAccMag-std(): "numeric"
* tGravityAccMag-mean(): "numeric"
* tGravityAccMag-std(): "numeric"
* tBodyAccJerkMag-mean(): "numeric"
* tBodyAccJerkMag-std(): "numeric"
* tBodyGyroMag-mean(): "numeric"
* tBodyGyroMag-std(): "numeric"
* tBodyGyroJerkMag-mean(): "numeric":
* tBodyGyroJerkMag-std(): "numeric"
* fBodyAcc-mean()-X: "numeric"
* fBodyAcc-mean()-Y: "numeric"
* fBodyAcc-mean()-Z: "numeric"
* fBodyAcc-std()-X: "numeric"
* fBodyAcc-std()-Y: "numeric"
* fBodyAcc-std()-Z: "numeric"
* fBodyAccJerk-mean()-X: "numeric"
* fBodyAccJerk-mean()-Y: "numeric"
* fBodyAccJerk-mean()-Z: "numeric"
* fBodyAccJerk-std()-X: "numeric"
* fBodyAccJerk-std()-Y: "numeric"
* fBodyAccJerk-std()-Z: "numeric"
* fBodyGyro-mean()-X: "numeric"
* fBodyGyro-mean()-Y: "numeric"
* fBodyGyro-mean()-Z: "numeric"
* fBodyGyro-std()-X: "numeric"
* fBodyGyro-std()-Y: "numeric"
* fBodyGyro-std()-Z: "numeric"
* fBodyAccMag-mean(): "numeric"
* fBodyAccMag-std(): "numeric"
* fBodyBodyAccJerkMag-mean(): "numeric"
* fBodyBodyAccJerkMag-std(): "numeric"
* fBodyBodyGyroMag-mean(): "numeric"
* fBodyBodyGyroMag-std(): "numeric"
* fBodyBodyGyroJerkMag-mean(): "numeric"
* fBodyBodyGyroJerkMag-std(): "numeric"
