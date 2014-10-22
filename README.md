Samsung Data Analysis
===================

The raw data for this analysis was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Source of data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#How the run_analysis script works

run_analysis.R performs the following steps:

1. Prior to running the script we need to ensure we extract the contents of the zip file in the R working directory. The working directory must contain the following:
*activity_labels.txt
*features_info.txt
*features.txt
*test directory (containing subject_test.txt, X_test.txt, y_test.txt)
*train directory (containing subject_train.txt, X_train.txt, y_train.txt)

2. Reads the various text files and creates features, activity_lables, test and train objects. Th test and train objects are merged to form a bigger data table merged_data. The column names are renamed - Please refer to CODEBOOK.md for more information

3. Extracts the columns containing "mean" data and "std" data into mean_data and std_data objects. mean_std_data is created as a result and this is the set of data with columns subject, activity, and all the mean and std dev columns.

4. Factors the activity column of mean_std_data, currently numeric, into activity names 
*1 WALKING
*2 WALKING_UPSTAIRS
*3 WALKING_DOWNSTAIRS
*4 SITTING
*5 STANDING
*6 LAYING

5. Reshapes mean_std_data into reshaped_data with unique identifier the combination of subject and activity. Calculate the average of each variable for each activity and each subject

6. Write to a text file called tidy.txt.
