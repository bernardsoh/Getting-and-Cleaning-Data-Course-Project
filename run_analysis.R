# The libraries used in this operation are data.table and dplyr. We prefer data.table as it is efficient in handling large data as tables. dplyr is used to aggregate variables to create the tidy data.

library(data.table)
library(dplyr)

# The supporting metadata in this data are the name of the features and the name of the activities. They are loaded into variables featureNames and activityLabels.

featureNames <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Both training and test data sets are split up into subject, activity and features. They are present in three different files.

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

#Part 1 - Merge the training and the test sets to create one data set
#We can use combine the respective data in training and test data sets corresponding to subject, activity and features. The results are stored in subject, activity and features.

subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
features <- rbind(featuresTrain, featuresTest)

#The columns in the features data set can be named from the metadata in featureNames

colnames(features) <- t(featureNames[2])

#The data in features,activity and subject are merged and the complete data is now stored in completeData.

colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
completeData <- cbind(features,activity,subject)

#Part 2 - Extracts only the measurements on the mean and standard deviation for each measurement
columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(completeData), ignore.case=TRUE)
#Add activity and subject columns to the list and look at the dimension of completeData
requiredColumns <- c(columnsWithMeanSTD, 562, 563)
dim(completeData)

extractedData <- completeData[,requiredColumns]
dim(extractedData)

#Part 3 - Uses descriptive activity names to name the activities in the data set
#The activity field in extractedData is originally of numeric type. We need to change its type to character so that it can accept activity names. The activity names are taken from metadata activityLabels.
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
  extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}
extractedData$Activity <- as.factor(extractedData$Activity)

#Part 4 - Appropriately labels the data set with descriptive variable names
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))

names(extractedData)

#Part 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)

tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)

