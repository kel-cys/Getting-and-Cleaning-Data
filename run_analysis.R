## This script analyses experiment data obtained from the project: Human Activity Recognition Using Smartphones 
## more infomation is avaible at the following link 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## This script:
## Merges the training and the test sets to create one data set, 
## perform operations to produce a tidy data set.


## downloading files 
if(!file.exists("./data")){
  dir.create("./data")
}

fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists("./data/Dataset.zip")){
  download.file(fileUrl, destfile = "./data/Dataset.zip")
}

unzip("./data/Dataset.zip", overwrite = FALSE, exdir = "./data")

## Checking for required packages
if (!("reshape2" %in% rownames(installed.packages())) ) {
  print("Installing required package \"reshape2\"")
  install.packages("reshape2")
} else {
  ## Open required libraries
  library(reshape2)
}

## reading data into variables
xTest = read.table("./data/UCI HAR Dataset/test/X_test.txt")
yTest = read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "activityId")
subjectTest = read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

xTrain = read.table("./data/UCI HAR Dataset/train/X_train.txt")
yTrain = read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "activityId")
subjectTrain = read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

variableName <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, col.names = c("featureId", "featureName"))
activityLabel <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityId", "activityName"))

# merging data
xTest <- cbind(subjectTest, yTest, xTest)
xTrain <- cbind(subjectTrain, yTrain, xTrain)

data <- rbind(xTest, xTrain)
names(data) <- c("subject", "activityId", variableName$featureName)
rm(xTest, xTrain)

# Extracting  mean and standard deviation measurements

meanIdx <- grep("mean()", colnames(data), fixed = TRUE)
stdIdx <- grep("std()", colnames(data))

data <- data[, c(1, 2, meanIdx, stdIdx)]

# Uses descriptive activity names to name the activities in the data set
data$activityName <- factor(data$activityId, labels =  activityLabel$activityName)

## Melt and cast the dataset to get the desired output: average of each variable 
## for each activity and each subject
meltData <- melt(data, id = c("activityId", "activityName", "subject"))

## Cast the melted dataset according to  the average of each variable 
## for each activity and each subjec
meanData <- dcast(meltData, activityName + subject ~ variable, mean)

## Output the tiny data to a text file
write.table(meanData,"./data/tidy_data.txt", row.name = FALSE)


