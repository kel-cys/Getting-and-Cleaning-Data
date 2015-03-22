## Data Source
This dataset is obtained from the "Human Activity Recognition Using Smartphones Data Set" which was  available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Feature Selection
Only measurements on the mean and standard deviation for each measurement are extracted for analysis.
The sensor signals (accelerometer and gyroscope) were used to estimate variables of the feature vector for each pattern.
'X/Y/Z' is used to denote 3-axial signals in the X, Y and Z directions.
The subjects are from a group of 30 volunteers within an age bracket of 19-48 years.
The activities are (walking, walking upstair, walking downstair, sitting, sitting, laying) wearing a smartphone on the waist.

* tBodyAcc-X/Y/Z
* tGravityAcc-X/Y/Z
* tBodyAccJerk-X/Y/Z
* tBodyGyro-X/Y/Z
* tBodyGyroJerk-X/Y/Z
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-X/Y/Z
* fBodyAccJerk-X/Y/Z
* fBodyGyro-X/Y/Z
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag
* activityName
* subject 1-30 

## Features Info
mean: mean values of measurements of variables. Numeric

std: Standard deviation of measurements of variables. Numeric

activityId: Identifier, identifying the activity of each subject 
Integer: 1 to 6

activityName: Descriptive name of subject's activity 
Factors: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject : Identifier, identifying each subject. Integer: 1 to 30
