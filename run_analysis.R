# Run Analysis.R - Programming assignment for Getting and cleaning Data course 
#                  on Coursera.
#
# Student: Jack Wilson
#
# Assignment:
#   You should create one R script called run_analysis.R that does the following. 
#   1. Merges the training and the test sets to create one data set.
#   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#   3. Uses descriptive activity names to name the activities in the data set
#   4. Appropriately labels the data set with descriptive variable names. 
#   5. From the data set in step 4, creates a second, independent tidy data set with 
#      the average of each variable for each activity and each subject.
#
# Note:  For simplicity all files used are included.

require(data.table) #needed for fread
require(plyr) #needed for mapvalues

#******************************************************************
# 1. Merges the training and the test sets to create one data set.
#******************************************************************
# First combine the three files in the test data into one dataset
rm(list=ls())
subjects_test <- read.table("./subject_test.txt", sep=" ")

#since X_test is large, apply a trick to make it go faster.
tab5rows <- read.table("./X_test.txt", nrows = 5)
classes <- sapply(tab5rows, class)
X_test <- read.table("./X_test.txt", colClasses = classes)

y_test <- read.table("./y_test.txt")
test <- cbind(subjects_test, y_test, X_test )
rm (subjects_test, X_test, y_test) # remove old variable to save memory

subjects_train <- read.table("./subject_train.txt", sep=" ")

#classes should be the same in the X_train so use them here too.
X_train <- read.table("./X_train.txt", colClasses = classes)
y_train <- read.table("./y_train.txt")
train <- cbind(subjects_train, y_train, X_train)
rm (subjects_train, y_train, X_train, tab5rows, classes) # remove old variable to save memory

#assumption is that the subjects are the same between test and train
#combine the 2 data sets

data <- rbind(test, train)
rm(test, train) # remove old variable to save memory
#************************************************************************
#   4. Appropriately labels the data set with descriptive variable names.
# I know this is out of order but I found it easier to do step 4 before 
# step 2, but had to use a more complicated regex string to filter off
# freqMean
#************************************************************************

#thats a big bunch of stuff.   Lets give it some labels.

# NOTE: I'm sure there is a better way to do the following.  
#   ** Reviewers please let me know **
#read only the second column from the features.txt file
labels <- read.table("./features.txt", colClasses = c("NULL", "character"))
#add the subjects and activities columns
labels <- rbind("subject","activity", labels)
#convert to vector
labels <- unlist(labels)
#now add the column names
data <- setNames(data, labels)
#rm(labels)

#OK  Now we have some serious data.  
#****************************************************************************
#   2. Extracts only the measurements on the mean and standard deviation for 
#      each measurement. 
#****************************************************************************
# get me a vector of all the columns I'm interest in (those containing mean or std).
# I choose all columns contains mean or std as the assigment 
# was not specific in that regard
cols = grepl("subject|activity|std\\(\\)|mean\\(\\)", labels, fixed = true)
# now just get those columns
newData <- data[,cols] 

#****************************************************************************
#   3. Uses descriptive activity names to name the activities in the data set
#****************************************************************************

newData$activity <- mapvalues(newData$activity, 
                    from = c(1,2,3,4,5,6),
                    to = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))
rm(data)

#************************************************************************************
#   5. From the data set in step 4, creates a second, independent tidy data set with 
#      the average of each variable for each activity and each subject.
#************************************************************************************

# Create a data date based on subject and activity and find the sums of each column
sums <- aggregate(newData[,3:68], by=list(newData$subject, newData$activity), FUN=mean)

#The Aggregate function calls the first 2 columns Group.1 and Group.2, so rename them
names(sums)[colnames(sums)=="Group.1"] <- "Subject"
names(sums)[colnames(sums)=="Group.2"] <- "Activity"

#finally, lets write this out
write.table(sums, "./tidy.txt", row.name = FALSE)