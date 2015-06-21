**DATA DICTIONARY FOR FINAL TIDY DATA**

1 Subjectid: an identifier of the subject who carried out the experiment int from 1 to 30

2 ActivityType: type of activity performed by each subject Factor w/ 6 levels 1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING

3 tBodyAcc_mean_X: feature variable num within [-1,1]

4 tBodyAcc_mean_Y: feature variable num within [-1,1]

5 tBodyAcc_mean_Z: feature variable num within [-1,1]

6 tBodyAcc_std_X: feature variable num within [-1,1]

7 tBodyAcc_std_Y: feature variable num within [-1,1]

8 tBodyAcc_std_Z: feature variable num within [-1,1]

9 tGravityAcc_mean_X: feature variable num within [-1,1]

10 tGravityAcc_mean_Y: feature variable num within [-1,1]

11 tGravityAcc_mean_Z: feature variable num within [-1,1]

12 tGravityAcc_std_X: feature variable num within [-1,1]

13 tGravityAcc_std_Y: feature variable num within [-1,1]

14 tGravityAcc_std_Z: feature variable num within [-1,1]

15 tBodyAccJerk_mean_X: feature variable num within [-1,1]

16 tBodyAccJerk_mean_Y: feature variable num within [-1,1]

17 tBodyAccJerk_mean_Z: feature variable num within [-1,1]

18 tBodyAccJerk_std_X: feature variable num within [-1,1]

19 tBodyAccJerk_std_Y: feature variable num within [-1,1]

20 tBodyAccJerk_std_Z: feature variable num within [-1,1]

21 tBodyGyro_mean_X: feature variable num within [-1,1]

22 tBodyGyro_mean_Y: feature variable num within [-1,1]

23 tBodyGyro_mean_Z: feature variable num within [-1,1]

24 tBodyGyro_std_X: feature variable num within [-1,1]

25 tBodyGyro_std_Y: feature variable num within [-1,1]

26 tBodyGyro_std_Z: feature variable num within [-1,1]

27 tBodyGyroJerk_mean_X: feature variable num within [-1,1]

28 tBodyGyroJerk_mean_Y: feature variable num within [-1,1]

29 tBodyGyroJerk_mean_Z: feature variable num within [-1,1]

30 tBodyGyroJerk_std_X: feature variable num within [-1,1]

31 tBodyGyroJerk_std_Y: feature variable num within [-1,1]

32 tBodyGyroJerk_std_Z: feature variable num within [-1,1]

33 tBodyAccMag_mean: feature variable num within [-1,1]

34 tBodyAccMag_std: feature variable num within [-1,1]

35 tGravityAccMag_mean: feature variable num within [-1,1]

36 tGravityAccMag_std: feature variable num within [-1,1]

37 tBodyAccJerkMag_mean: feature variable num within [-1,1]

38 tBodyAccJerkMag_std: feature variable num within [-1,1]

39 tBodyGyroMag_mean: feature variable num within [-1,1]

40 tBodyGyroMag_std: feature variable num within [-1,1]

41 tBodyGyroJerkMag_mean: feature variable num within [-1,1]

42 tBodyGyroJerkMag_std: feature variable num within [-1,1]

43 fBodyAcc_mean_X: feature variable num within [-1,1]

44 fBodyAcc_mean_Y: feature variable num within [-1,1]

45 fBodyAcc_mean_Z: feature variable num within [-1,1]

46 fBodyAcc_std_X: feature variable num within [-1,1]

47 fBodyAcc_std_Y: feature variable num within [-1,1]

48 fBodyAcc_std_Z: feature variable num within [-1,1]

49 fBodyAccJerk_mean_X: feature variable num within [-1,1]

50 fBodyAccJerk_mean_Y: feature variable num within [-1,1]

51 fBodyAccJerk_mean_Z: feature variable num within [-1,1]

52 fBodyAccJerk_std_X: feature variable num within [-1,1]

53 fBodyAccJerk_std_Y: feature variable num within [-1,1]

54 fBodyAccJerk_std_Z: feature variable num within [-1,1]

55 fBodyGyro_mean_X: feature variable num within [-1,1]

56 fBodyGyro_mean_Y: feature variable num within [-1,1]

57 fBodyGyro_mean_Z: feature variable num within [-1,1]

58 fBodyGyro_std_X: feature variable num within [-1,1]

59 fBodyGyro_std_Y: feature variable num within [-1,1]

60 fBodyGyro_std_Z: feature variable num within [-1,1]

61 fBodyAccMag_mean: feature variable num within [-1,1]

62 fBodyAccMag_std: feature variable num within [-1,1]

63 fBodyBodyAccJerkMag_mean: feature variable num within [-1,1]

64 fBodyBodyAccJerkMag_std: feature variable num within [-1,1]

65 fBodyBodyGyroMag_mean: feature variable num within [-1,1]

66 fBodyBodyGyroMag_std: feature variable num within [-1,1]

67 fBodyBodyGyroJerkMag_mean: feature variable num within [-1,1]

68 fBodyBodyGyroJerkMag_std: feature variable num within [-1,1]



**NOTE: 66 feature variables are used for the final dat**

The study on Human Activity Recognition is based on the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The original features selected for the study come from the accelerometer, gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, and other signals. For example,

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

There are a total of 561 feature variables that were estimated from these signals and they are:

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

For the purpose of our project, however, we are only interested in the measurement variables related to the mean value and the standard deviation. There are 66 feature variables with mean() and std() in their names. meanFreq() is excluded as it is a function calculating something else other than mean().



**TRANSFORMATIONS TO CREATE A TIDY DATA SET**

The raw data sets come from the following files:

features.txt: List of all features.
activity_labels.txt: Links the class labels with their activity name.
train/X_train.txt: Training set.
train/y_train.txt: Training labels.
test/X_test.txt: Test set.
test/y_test.txt: Test labels.
train/subject_train.txt
test/subject_test.txt


TASK 1: Merge the training and the test sets to create one data set

Measurement data from the raw data sets, train/X_train.txt and test/X_test.txt, are merged
Label data from the raw data sets, train/y_train.txt and test/y_test.txt, are merged
Subject data from the raw data sets, train/subject_train.txt and test/subject_test.txt, are merged

TASK 2: Extract only the measurements on the mean and standard deviation for each measurement

Create a subset of feature list with mean() or std() in their variable names
Removed "(", ")", and replaced "-" with "_" in mean_sd_features to ensure legitimate feature variable names
Create a subset of measurements based on mean_sd_features --> mean_sd_data

TASK 3: Join the data from labels with the data from activity so that labels are associated with activity names

TASK 4: create a data set with descriptive variable names by merging all subjects, activity labels, and the measured data

TASK 5: create data set with the average of each variable for each activity and each subject, also write the data set to a text file, tidydata.txt
