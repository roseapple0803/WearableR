**DESCRIPTION**

This is a course project from Getting and Cleaning Data on Coursera. The raw data was collected from the recordings of 30 subjects performing six types of activities while carrying a waist-mounted smartphone with embedded inertial sensors. A full description of the study can be found here: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


The goal of the project is to create a tidy data set by running a R script, run_analysis.R, which would complete the folowing tasks:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a tidy data set with the average of each variable for each activity and each subject and also writes the data set to a text file.

For each record in the tidy data set, it follows the structure below:
* an identifier of the subject who carried out the experiment
* type of activity performed by the subject 
* 66 feature variables



**WHAT ARE INCLUDED IN THIS REPOSITORY**

* README.md
* CodeBook.md
* run_analysis.R 


**HOW TO RUN THE SCRIPT, run_analysis.R**

1. You need to have dplyr, plyr packages installed. 
2. download the compressed file at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
3. unzip the file 
4. set the working directory to where "UCI HAR Dataset" directory is located, and copy the full path to "UCI HAR Dataset" 
5. source the script and then run the command, run_it("the_full_ path_to_"UCI HAR Dataset")



