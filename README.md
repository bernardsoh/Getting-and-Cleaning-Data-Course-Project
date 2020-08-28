# Getting-and-Cleaning-Data-Course-Project

This is the course project for the Getting and Cleaning Data Coursera course.
The included R script, run_analysis.R, conducts the following:

1. Download the dataset from web if it does not already exist in the working directory.

2. Read both the train and test datasets and merge them into x(measurements), y(activity) and subject, respectively.

3. Load the data(x's) feature, activity info and extract columns named 'mean'(-mean) and 'standard'(-std). Also, modify column names to descriptive. (-mean to Mean, -std to Std, and remove symbols like -, (, ))

4. Extract data by selected columns(from step 3), and merge x, y(activity) and subject data. Also, replace y(activity) column to it's name by refering activity label (loaded step 3).

5. Generate 'Tidy Dataset' that consists of the average (mean) of each variable for each subject and each activity. The result is shown in the file tidy_dataset.txt.

**R Script: run_analysis.R**

The prerequistite for running this script is that the working directory has already been set.

Executing the run_analysis.R script completes the following actions:

1. Downloads and unzips the source data files into the set working directory.
2. Creates vectors containing the features and activity label information which are used to add descriptors later in the script.
3. Reads into seperate tables the training set, the associated activity IDs and subject IDs.
4. Reads into seperate tables the test set, the associated activity IDs and subject IDs.
5. Merges the training and the test sets to create one data set.
6. Merges the activity ID and subject ID tables for the training and test sets.
7. Labels the variables in the columns of the merged dataset with descriptive names using the created features vector. The variables are now easier to interpret than the original 'V_' descriptors.
8. Add two 2 columns to the merged dataset so an activity ID and subject ID are assigned to each row. This links the recorded measurements to the invidividual subject and the activity they were undertaking.
9. Extracts only the variables relating to the mean and standard deviation values for each measurement. The measurements have been selected where suffixed with mean() or std() which are the mean and standard deivation measurements for the signals.
10. Uses descriptive activity names to label the activities in the data set rather than the original activity number. This makes the data easier to interpret. The newly added columns are ordered so they are columns 1 and 2 in the data set.
11. Creates 'wide' tidy data set called TidyData which contains a single row for each activity and subject combination and a single column for each variable mean value. The data set is ordered by subject ID in ascending order.
12. Creates a text file of TidyData so it can be exported and uploaded onto GitHub.
