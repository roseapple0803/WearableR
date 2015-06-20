
The Dataset includes the following files:
=========================================
Source of the data:

- features.txt: List of all features.

- activity_labels.txt: Links the class labels with their activity name.

- train/X_train.txt: Training set.

- train/y_train.txt: Training labels.

- test/X_test.txt: Test set.

- test/y_test.txt: Test labels.

- train/subject_train.txt

-------------------------------------


------------------------------------------------------
	DATA DICTIONARY FOR FINAL DATA


	

1	Subjectid	: 1..30  an identifier of the subject who carried out the experiment

2   ActivityType:  type of activity performed by each subject 1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING

3	tBodyAcc_mean_X	: num 0.277 0.276 0.276 0.279 0.278 ...
 
4	tBodyAcc_mean_Y	: num -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...

5	tBodyAcc_mean_Z	: num -0.111 -0.106 -0.113 -0.111 -0.108 ...

6	tBodyAcc_std_X	: num -0.284 -0.424 -0.36 -0.441 -0.294 ...

7	tBodyAcc_std_Y	: num 0.1145 -0.0781 -0.0699 -0.0788 0.0767 ...

8	tBodyAcc_std_Z	: num -0.26 -0.425 -0.387 -0.586 -0.457 ...

9	tGravityAcc_mean_X	: num 0.935 0.913 0.937 0.964 0.973 ...

10	tGravityAcc_mean_Y	: num -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...

11	tGravityAcc_mean_Z	: num -0.0681 0.08473 -0.13811 0.12776 0.00248 ...

12	tgravityaccstdx	: num -0.977 -0.973 -0.978 -0.984 -0.979 ...

13	tgravityaccstdy	: num -0.971 -0.972 -0.962 -0.968 -0.962 ...

14	tgravityaccstdz	: num -0.948 -0.972 -0.952 -0.963 -0.965 ...

15	tbodyaccjerkmeanx	: num 0.074 0.0618 0.0815 0.0784 0.0846 ...

16	tbodyaccjerkmeany	: num 0.02827 0.01825 0.01006 0.00296 -0.01632 ...

17	tbodyaccjerkmeanz	: num -4.17e-03 7.90e-03 -5.62e-03 -7.68e-04 8.32e-05 ...
18	tbodyaccjerkstdx	: num -0.114 -0.278 -0.269 -0.297 -0.303 ...
19	tbodyaccjerkstdy	: num 0.067 -0.0166 -0.045 -0.2212 -0.091 ...
20	tbodyaccjerkstdz	: num -0.503 -0.586 -0.529 -0.751 -0.613 ...
21	tbodygyromeanx	: num -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
22	tbodygyromeany	: num -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...
23	tbodygyromeanz	: num 0.0849 0.0828 0.0813 0.0806 0.0815 ...
24	tbodygyrostdx	: num -0.474 -0.562 -0.572 -0.501 -0.491 ...
25	tbodygyrostdy	: num -0.0546 -0.5385 -0.5638 -0.6654 -0.5046 ...
26	tbodygyrostdz	: num -0.344 -0.481 -0.477 -0.663 -0.319 ...
27	tbodygyrojerkmeanx	: num -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
28	tbodygyrojerkmeany	: num -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...
29	tbodygyrojerkmeanz	: num -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...
30	tbodygyrojerkstdx	: num -0.207 -0.39 -0.386 -0.492 -0.358 ...
31	tbodygyrojerkstdy	: num -0.304 -0.634 -0.639 -0.807 -0.571 ...
32	tbodygyrojerkstdz	: num -0.404 -0.435 -0.537 -0.64 -0.158 ...
33	tbodyaccmagmean	: num -0.137 -0.29 -0.255 -0.312 -0.158 ...
34	tbodyaccmagstd	: num -0.22 -0.423 -0.328 -0.528 -0.377 ...
35	tgravityaccmagmean	: num -0.137 -0.29 -0.255 -0.312 -0.158 ...
36	tgravityaccmagstd	: num -0.22 -0.423 -0.328 -0.528 -0.377 ...
37	tbodyaccjerkmagmean	: num -0.141 -0.281 -0.28 -0.367 -0.288 ...
38	tbodyaccjerkmagstd	: num -0.0745 -0.1642 -0.1399 -0.3169 -0.2822 ...
39	tbodygyromagmean	: num -0.161 -0.447 -0.466 -0.498 -0.356 ...
40	tbodygyromagstd	: num -0.187 -0.553 -0.562 -0.553 -0.492 ...
41	tbodygyrojerkmagmean	: num -0.299 -0.548 -0.566 -0.681 -0.445 ...
42	tbodygyrojerkmagstd	: num -0.325 -0.558 -0.567 -0.73 -0.489 ...
43	fbodyaccmeanx	: num -0.203 -0.346 -0.317 -0.427 -0.288 ...
44	fbodyaccmeany	: num 0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...
45	fbodyaccmeanz	: num -0.332 -0.454 -0.412 -0.631 -0.49 ...
46	fbodyaccstdx	: num -0.319 -0.458 -0.379 -0.447 -0.298 ...
47	fbodyaccstdy	: num 0.056 -0.1692 -0.124 -0.1018 0.0426 ...
48	fbodyaccstdz	: num -0.28 -0.455 -0.423 -0.594 -0.483 ...
49	fbodyaccmeanfreqx	: num -0.208 -0.146 -0.247 -0.139 -0.322 ...
50	fbodyaccmeanfreqy	: num 0.11309 0.19859 0.17174 0.01235 -0.00204 ...
51	fbodyaccmeanfreqz	: num 0.0497 0.0689 0.0749 -0.0788 0.0247 ...
52	fbodyaccjerkmeanx	: num -0.171 -0.305 -0.305 -0.359 -0.345 ...
53	fbodyaccjerkmeany	: num -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...
54	fbodyaccjerkmeanz	: num -0.469 -0.555 -0.514 -0.729 -0.59 ...
55	fbodyaccjerkstdx	: num -0.134 -0.314 -0.297 -0.297 -0.321 ...
56	fbodyaccjerkstdy	: num 0.10674 -0.01533 -0.00561 -0.2099 -0.05452 ...
57	fbodyaccjerkstdz	: num -0.535 -0.616 -0.544 -0.772 -0.633 ...
58	fbodyaccjerkmeanfreqx	: num -0.2093 -0.0727 -0.216 -0.1353 -0.3594 ...
59	fbodyaccjerkmeanfreqy	: num -0.386 -0.264 -0.259 -0.386 -0.534 ...
60	fbodyaccjerkmeanfreqz	: num -0.186 -0.255 -0.347 -0.326 -0.344 ...
61	fbodygyromeanx	: num -0.339 -0.43 -0.438 -0.373 -0.373 ...
62	fbodygyromeany	: num -0.103 -0.555 -0.562 -0.688 -0.514 ...
63	fbodygyromeanz	: num -0.256 -0.397 -0.418 -0.601 -0.213 ...
64	fbodygyrostdx	: num -0.517 -0.604 -0.615 -0.543 -0.529 ...
65	fbodygyrostdy	: num -0.0335 -0.533 -0.5689 -0.6547 -0.5027 ...
66	fbodygyrostdz	: num -0.437 -0.56 -0.546 -0.716 -0.42 ...
67	fbodygyromeanfreqx	: num 0.01478 0.00728 0.03376 -0.12715 -0.04586 ...
68	fbodygyromeanfreqy	: num -0.0658 -0.0427 -0.038 -0.2747 -0.0192 ...





----------------------------------------------------
NOTE: 66 feature variables are used for the final data

There are a total of 561 feature variables used for the study, from a variety of signals such as 

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals for the study are:: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors

For the purpose of our project, however, we are only interested in the measurement variables related to the mean value and the standard deviation. Instead of using all of the 561 variables, we now have 66 variables, which have mean() and std() in their variable names.






-----------------------------------------------------
Transformations to clean up the data 

The raw data sets come from the following files:

- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.
- train/X_train.txt: Training set.
- train/y_train.txt: Training labels.
- test/X_test.txt: Test set.
- test/y_test.txt: Test labels.
- train/subject_train.txt
- test/subject_test.txt

Task 1: Merge the training and the test sets to create one data set
Data from train/X_train.txt and test/X_test.txt are merged --> bigData 
Data from train/y_train.txt and test/y_test.txt are merged --> labels 
Data from train/subject_train.txt and test/subject_test.txt are merged --> subjects

Task 2: Extract only the measurements on the mean and standard deviation for each measurement. 
create a shorter feature list with mean() or std() in their variable names from feature list --> mean_sd_features
Then removed "(", ")", and replaced "-" with "_" in mean_sd_features to ensure legitimate feature variable names 
Finally select a subset of bigData based on mean_sd_features --> mean_sd_data

Task 3: Use descriptive activity names to name the activities in the data set
join the data from labels with the data from activity --> labels now have a new column with descriptive activity names

Task 4: Label the data set with descriptive variable names. 
Labels the data set, mean_sd_dat, with the values from mean_sd_features

step 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject.
Merged the data from subjects, labels, mean_sd_data
Re-ordered the levels of ActivityType so that the final data will be in the order of
	## "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
have the data group-by SubjectId and ActivityType and 
The final tidy data set has 180 * 68 rows with the following structure:
SubjectId: 1 - 30
ActivityType: WALKING, WALKING_UPSTAR...
followed by 66 groups of numeric numbers - the average of each feature variable for each SubjectId and each ActivityType



--------------------------------------------------
features:
source: features.txt which provides a list of 561 featuer vectors
A 561-feature vector with time and frequency domain variables
For the project, we are only interested in the following feature variables as they are related to the mean and the standard deviation

activity_labels
source: activity_labels.txt provides 6 different labels with their corresponding activity name
names(activities) <- c("ActivityType", "ActivityDesc")
ActivityType: six activity labels from 1 - 6
ActivityDesc: their corresponding activity name


subjects:
source: train/subject_train.txt + test/subject_test.txt (7352 rows + 2947 rows = 10299 rows of subjectId)
Each row identifies the subject who performed the activity for each window sample. There are 30 subjects, ranging from 1 to 30. 
subjectId: an identifier of the subject who carried out the experiment.



data set (traing set + test set)
souce: train/X_train.txt + test/X_test.txt (7352 rows of 561 feature variables + 2947 rows of 561 feature variables = 10299 rows of feature variables/feature vectors)
values are normalized and bounded within [-1,1]

names(mean_sd_data) <- mean_sd_features$V2


labels (training labels + test labels)
source: train/y_train.txt + test/y_test.txt (7352 rows of labels + 2947 rows of labels = 10299 rows of labels)
Its activity label
names(labels) <- ActivityType
---
