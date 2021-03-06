library(plyr)
library(reshape2)

#Step 1: Merges the training and the test sets to create one data set.

features <- read.table("features.txt", sep=" ", col.names=c('featureId', 'featureName'), stringsAsFactors=FALSE)
activity_labels <- read.table("activity_labels.txt", sep=" ", col.names=c('activityId', 'activityName'))

feature_names <- features$featureName

test <- cbind(read.table("test/subject_test.txt", col.names="subject"),
                       read.table("test/y_test.txt", col.names="activity"),
                       read.table("test/x_test.txt", check.names=FALSE,col.names=feature_names))

train <- cbind(read.table("train/subject_train.txt", col.names="subject"),
              read.table("train/y_train.txt", col.names="activity"),
              read.table("train/x_train.txt", check.names=FALSE, col.names=feature_names))

merged_data <- rbind(train, test)

#Sanity check to make sure merged_data contains correct column names
names(merged_data)


#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
ncol(merged_data)
mean_data <- merged_data[, grep("*mean*", names(merged_data), ignore.case=TRUE)]
std_data <- merged_data[, grep("*std*", names(merged_data))]
subject <- merged_data$subject
activity <- merged_data$activity
mean_std_data <- cbind(subject, activity, mean_data, std_data)


#Step 3: Uses descriptive activity names to name the activities in the data set
mean_std_data$activity <- factor(mean_std_data$activity, labels=activity_labels$activityName)

#Step 4: Appropriately labels the data set with descriptive variable names. 
colnames(mean_std_data) <- gsub(pattern="Freq", replacement="Frequency", colnames(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="tBody", replacement="Time.Body", colnames(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="tGravity", replacement="Time.Gravity", colnames(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="fBody", replacement="Frequency.Body", colnames(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="Acc", replacement="Acceleration", colnames(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="-", replacement=".", colnames(mean_std_data))
colnames(mean_std_data) <- gsub(pattern="std", replacement="std.deviation", colnames(mean_std_data))

#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity 
#and each subject

#melt the dataset
reshaped_data <- melt(mean_std_data, id=c("subject","activity"))
reshaped_tidy_data <- dcast(reshaped_data, subject+activity ~ variable, mean)

#Write to csv file
write.table(reshaped_tidy_data, "tidy.txt", row.names=FALSE)