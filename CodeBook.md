# Codebook for Getting and Cleaning Project

##Data Set Code Book: Run_Analysis - Get and clean data collected from the accelerometers from the Samsung Galaxy S smartphone.

October 24, 2015
Codebook prepared by John Wilson for the Coursera Getting and Cleaning Data course

##Variables used in Run_Analysis
###subjects_test: 
Numeric numbers representing each of 30 subjects read from the subjects_test.txt file.   
###tab5row: 
First 5 rows read from the X_text.txt file, so the classes of each column code be determined
###classes: 
The type of columns in the file, used when reading the entire file so it is read faster
###X_Test: 
Data table read from the X_Test.txt file that contains all the information collected from the smartphones
###y_test: 
Numeric numbers representing each of 6 activities collected from the smartphones
###test: 
All the test data (subject_test, X_Test, and Y_Test) combined in on data.table
###subjects_train: 
Numeric numbers representing each of 30 subjects read from the subjects_test.txt file.   
###X_Train: 
Data.table read from the X_Test.txt file that contains all the information collected from the smartphones
###y_train: 
Numeric numbers representing each of 6 activities collected from the smartphones
###train: 
All the test data (subject_test, X_Test, and Y_Test) combined in on data.table
###data: 
Test and train added to create a single data table
###labels: 
A vector of all the labels read from features.txt prepended by "Subject" and "Activity" 
###cols: 
A vector of all the columns that contain "subject", "activity", "std()" and "mean()" 
###newData: 
A data.table containing just the columns needed.
###sums: 
The final tidy data set in wide format contains 180 rows (6 activities, 30 subjects), where each column is the mean of the data collected.

