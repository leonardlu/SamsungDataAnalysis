CodeBook
===========

run_analysis.R produces a tidy data set consisting of the 81 columns below:

1. `subject`: identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

2. `activity`: factor variable representing activity that subject is carrying out. LEVELS = WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 

The remaining 79 columns represent the means and standard deviation of the features measured, each obtained by calculating variables from the time and frequency domain that come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

*tBodyAcc.mean...X
*tBodyAcc.mean...Y
*tBodyAcc.mean...Z
*tGravityAcc.mean...X
*tGravityAcc.mean...Y
*tGravityAcc.mean...Z
*tBodyAccJerk.mean...X
*tBodyAccJerk.mean...Y
*tBodyAccJerk.mean...Z
*tBodyGyro.mean...X
*tBodyGyro.mean...Y
*tBodyGyro.mean...Z
*tBodyGyroJerk.mean...X
*tBodyGyroJerk.mean...Y
*tBodyGyroJerk.mean...Z
*tBodyAccMag.mean..
*tGravityAccMag.mean..
*tBodyAccJerkMag.mean..
*tBodyGyroMag.mean..
*tBodyGyroJerkMag.mean..
*fBodyAcc.mean...X
*fBodyAcc.mean...Y
*fBodyAcc.mean...Z
*fBodyAcc.meanFreq...X
*fBodyAcc.meanFreq...Y
*fBodyAcc.meanFreq...Z
*fBodyAccJerk.mean...X
*fBodyAccJerk.mean...Y
*fBodyAccJerk.mean...Z
*fBodyAccJerk.meanFreq...X
*fBodyAccJerk.meanFreq...Y
*fBodyAccJerk.meanFreq...Z
*fBodyGyro.mean...X
*fBodyGyro.mean...Y
*fBodyGyro.mean...Z
*fBodyGyro.meanFreq...X
*fBodyGyro.meanFreq...Y
*fBodyGyro.meanFreq...Z
*fBodyAccMag.mean..
*fBodyAccMag.meanFreq..
*fBodyBodyAccJerkMag.mean..
*fBodyBodyAccJerkMag.meanFreq..
*fBodyBodyGyroMag.mean..
*fBodyBodyGyroMag.meanFreq..
*fBodyBodyGyroJerkMag.mean..
*fBodyBodyGyroJerkMag.meanFreq..
*tBodyAcc.std...X
*tBodyAcc.std...Y
*tBodyAcc.std...Z
*tGravityAcc.std...X
*tGravityAcc.std...Y
*tGravityAcc.std...Z
*tBodyAccJerk.std...X
*tBodyAccJerk.std...Y
*tBodyAccJerk.std...Z
*tBodyGyro.std...X
*tBodyGyro.std...Y
*tBodyGyro.std...Z
*tBodyGyroJerk.std...X
*tBodyGyroJerk.std...Y
*tBodyGyroJerk.std...Z
*tBodyAccMag.std..
*tGravityAccMag.std..
*tBodyAccJerkMag.std..
*tBodyGyroMag.std..
*tBodyGyroJerkMag.std..
*fBodyAcc.std...X
*fBodyAcc.std...Y
*fBodyAcc.std...Z
*fBodyAccJerk.std...X
*fBodyAccJerk.std...Y
*fBodyAccJerk.std...Z
*fBodyGyro.std...X
*fBodyGyro.std...Y
*fBodyGyro.std...Z
*fBodyAccMag.std..
*fBodyBodyAccJerkMag.std..
*fBodyBodyGyroMag.std..
*fBodyBodyGyroJerkMag.std..
