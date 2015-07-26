## Coursera 'Getting and Cleaning Data' course project, July 2015
## run_analysis.R 
## 
## Student: TallDavid
## Data source & description: 
##      http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##
## This R script performs the following actions:
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set with the 
##    average of each variable for each activity and each subject.
#
# Load libraries
library(plyr) # Load plyr before dplyr to avoid bugs. Ref: https://class.coursera.org/getdata-030/forum/thread?thread_id=37
library(dplyr)
#
## 1) Merges the training and the test sets to create one data set.
# read each of the data files
trainSubject <- read.table("subject_train.txt", sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
testSubject  <- read.table("subject_test.txt",  sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
trainX       <- read.table("X_train.txt",       sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
testX        <- read.table("X_test.txt",        sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
trainY       <- read.table("y_train.txt",       sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
testY        <- read.table("y_test.txt",        sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
FeaturesLabels <- read.table("features.txt",    sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)
ActivityLabels <- read.table("activity_labels.txt", sep = "" , header = FALSE, na.strings ="", stringsAsFactors= FALSE)

# combine y, X & subject files by adding the y & X vectors to subject as additional columns
train    <- cbind( trainX, trainSubject, trainY)
test     <- cbind( testX, testSubject, testY)
nolabels <- rbind(train, test)

# features.txt contains variable labels for the varibles (columns) in subject
FeaturesLabels <- FeaturesLabels$V2 
FeaturesLabels <- append(FeaturesLabels, c("Subject", "Activity"))
colnames(nolabels) <- FeaturesLabels
smartphoneAll <-tbl_df(nolabels)



# activitylabels.txt contains textual descriptions of the activities in y

write.table(smartphoneFinal, smartphoneFinal.csv, row.name=FALSE)
