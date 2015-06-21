library(dplyr)
library(plyr)

run_it <- function(workDir)
{
	## set the work directory
	setwd(workDir)


	## Task 1
	## merge all the measured data from the training set and the test set
	trainData <- read.csv("train/X_train.txt", header=F, sep="", stringsAsFactors=F) ## time-consuming!!
	testData <- read.csv("test/X_test.txt", header=F, sep="", stringsAsFactors=F)
	bigdata <- rbind(trainData, testData)
		
	## merge the label data from the training set and the test set	
	trainLabels <- read.csv("train/y_train.txt", header=FALSE)
	testLabels <- read.csv("test/y_test.txt", header=FALSE)
	labels <- rbind(trainLabels, testLabels)

	## merge the subjects from the training set and the test set
	trainSubjects <- read.csv("train/subject_train.txt", header=FALSE)
	testSubjects <- read.csv("test/subject_test.txt", header=FALSE)
	subjects <- rbind(trainSubjects, testSubjects)

	## read in the activity data
	activities <- read.csv("activity_labels.txt", header=FALSE, sep="", stringsAsFactors=FALSE)

	## read in 561 features
	features <- read.csv("features.txt", header=FALSE, sep="", stringsAsFactors=FALSE)

	## keep only the features related to the mean and standard deviation 
	## exclude ones with meanFreq
	## get rid of "(" and ")"  and also replace "-" with "_" in the selected variables -- they cause confusion in regular expressions
	mean_sd_features <- filter(features, grepl('mean|std', V2))
	mean_sd_features <- filter(mean_sd_features, !grepl('meanFreq', V2))
	mean_sd_features$V2 <- gsub(pattern="\\(", replacement="", mean_sd_features$V2)
	mean_sd_features$V2 <- gsub(pattern="\\)", replacement="", mean_sd_features$V2)
	mean_sd_features$V2 <- gsub(pattern="-", replacement="_", mean_sd_features$V2)



	## Task 2 
	## extract only the measurements on the mean and standard deviation for each measurement 
	mean_sd_data <- bigdata[, mean_sd_features$V1]
	
	## assign descriptive column names 
	names(subjects) <- c("SubjectId")
	names(labels) <- c("ActivityType")
	names(activities) <- c("ActivityType", "ActivityDesc")



	## Task 3
	## associate labels with activity names
	labels <- join(labels, activities, by="ActivityType")
	labels <- select(labels,ActivityDesc)  ## only keep "ActivityDesc" column
	labels <- dplyr::rename(labels, ActivityType = ActivityDesc) ## rename the column name to "ActivityType"

	## re-order the levels of ActivityType so that the final tidy data will be in the order of
	## "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
	labels$ActivityType <- factor(labels$ActivityType, levels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
	


	## Task 4
	## create a data set with descriptive variable names by merging
	## merge all the data from subjects, activity labels, and the measured data 
	names(mean_sd_data) <- mean_sd_features$V2
	mean_sd_data <- cbind(subjects, labels, mean_sd_data)


	
	## Task 5
	## create data set with the average of each variable for each activity and each subject.
	## also write the data set to a text file, tidydata.txt
	by_vars <- group_by(mean_sd_data, SubjectId, ActivityType)
	tidydata <- summarise_each(by_vars, funs(mean))	
	write.table(tidydata, file="tidydata.txt", quote = FALSE, col.names = TRUE, sep = ",", row.names = FALSE)

}