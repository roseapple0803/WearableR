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
	

	## Task 3	
	## merge the label data from the training set and the test set
	## assign a descriptive column name called "ActivityType"
	trainLabels <- read.csv("train/y_train.txt", header=FALSE)
	testLabels <- read.csv("test/y_test.txt", header=FALSE)
	labels <- rbind(trainLabels, testLabels)
	names(labels) <- c("ActivityType")


	## read in the activity data
	## assign all the columns with descriptive variable names
	activities <- read.csv("activity_labels.txt", header=FALSE, sep="", stringsAsFactors=FALSE)
	names(activities) <- c("ActivityType", "ActivityDesc")

	## associate the label data with the activity data 
	labels <- join(labels, activities, by="ActivityType")


	## merge the subjects from the training set and the test set
	## assign a descriptive column name called "SubjectId"
	trainSubjects <- read.csv("train/subject_train.txt", header=FALSE)
	testSubjects <- read.csv("test/subject_test.txt", header=FALSE)
	subjects <- rbind(trainSubjects, testSubjects)
	names(subjects) <- c("SubjectId")


	## read in 561 features
	features <- read.csv("features.txt", header=FALSE, sep="", stringsAsFactors=FALSE)

	## keep only the features related to the mean and standard deviation 
	## exclude ones with meanFreq
	## get rid of "(" and ")"  and also replace "-" with "_" in their names -- they cause confusion in regular expressions
	mean_sd_features <- filter(features, grepl('mean|std', V2))
	mean_sd_features <- filter(mean_sd_features, !grepl('meanFreq', V2))
	mean_sd_features$V2 <- gsub(pattern="\\(", replacement="", mean_sd_features$V2)
	mean_sd_features$V2 <- gsub(pattern="\\)", replacement="", mean_sd_features$V2)
	mean_sd_features$V2 <- gsub(pattern="-", replacement="_", mean_sd_features$V2)



	## Task 2 & 4
	## extract only the measurements on the mean and standard deviation for each measurement 
	## assign all the columns with descriptive variable names
	mean_sd_data <- bigdata[, mean_sd_features$V1]
	names(mean_sd_data) <- mean_sd_features$V2


	## merge all the data from subjects, activity labels, and the measured data 
	thedata <- cbind(subjects, labels, mean_sd_data)
	thedata <- select(thedata, -ActivityType)  ## remove the redundant column
	names(thedata$ActivityDesc) <- "ActivityType" ## rename "ActivityDesc" column to "ActivityType"
	colnames(thedata)[2] <- "ActivityType"

	## re-order the levels of ActivityType so that the summarised data will be in the order of
	## "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
	thedata$ActivityType <- ordered(thedata$ActivityType, levels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

	
	## Task 5
	## create data set with the average of each variable for each activity and each subject.
	by_vars <- group_by(thedata, SubjectId, ActivityType)
	summarisedata <- summarise_each(by_vars, funs(mean))
	

	write.csv(summarisedata, file = "tidydata.csv", row.names = FALSE)
	##write.table(summarisedata, file="tidydata.txt", row.names = FALSE)

}