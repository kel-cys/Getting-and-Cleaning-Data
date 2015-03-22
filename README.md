# Getting and Cleaning Data - Course Project

## Description
This project run a script on experiment data obtained from Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The mean and standard deviation of measurements are extracted to give a independent tidy data set with the average of each variable for each activity and each subject.

## Data Source
This dataset is obtained from the "Human Activity Recognition Using Smartphones DataSet" which was available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Script Info
The script performs the follwing operations:
* Download and unzip the files from the data source into local drive
* Check and install neccesary reshape2 package
* Load required data from the selected files 
* merge data from the test and train data sets
* rename column variables to descriptive names obtained from the features.txt
* extract mean and standard deviation of measurements from the data sets using grep
* melt and dcast the data frame to obtain the average of each variable for each activity and each subject
* Output the tiny data to a text file

## Reference
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
