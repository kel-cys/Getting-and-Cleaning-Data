# Getting and Cleaning Data - Course Project

## Data Source

This dataset is obtained from the "Human Activity Recognition Using Smartphones DataSet" which was available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Script Info

The script performs the follwing operations:
* Downloading and unzipping the files from the data source
* installing neccesary library packages
* loading of required data from the selected files
* merging of data from the test and train data sets
* renaming column variables to descriptive names
* extracting mean and standard deviation of measurements from the data sets
* melt and dcast the data frame to obtain the average of each variable for each activity and each subject
* Output the tiny data to a text file
* 
