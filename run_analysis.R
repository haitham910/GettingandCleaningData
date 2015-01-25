require(dplyr)
require(tidyr)
#step 4: Appropriately labels the data set with descriptive variable names. 
features <- read.table("./features.txt")
col_names <- as.character(features[,2])
col_names <- gsub("[(][)]$","",col_names)
# Reading & constructing data sets with descriptive variable names
x_train <- read.table("../UCI HAR Dataset/train/X_train.txt",col.names = col_names)
x_test <- read.table("../UCI HAR Dataset/test/X_test.txt",col.names = col_names)
y_train <- read.table("../UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
y_test <- read.table("../UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
subject_train <- read.table("../UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")
subject_test <- read.table("../UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
merged_train <- bind_cols(subject_train,y_train,x_train)
merged_test <- bind_cols(subject_test,y_test,x_test)
rm(x_test, x_train, y_test, y_train, features, subject_test, subject_train)

#Step 1: Merges the training and the test sets to create one data set
merged_data <- bind_rows(merged_train, merged_test)
rm(merged_train, merged_test)

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
mean_std_data = select(merged_data, Subject, Activity, contains("mean", ignore.case = TRUE), contains("std", ignore.case = TRUE))
rm(merged_data)

#step 3: Uses descriptive activity names to name the activities in the data set
mean_std_data <- mutate(mean_std_data, Activity = ifelse(Activity == 1, "WALKING",Activity))
mean_std_data <- mutate(mean_std_data, Activity = ifelse(Activity == 2, "WALKING_UPSTAIRS",Activity))
mean_std_data <- mutate(mean_std_data, Activity = ifelse(Activity == 3, "WALKING_DOWNSTAIRS",Activity))
mean_std_data <- mutate(mean_std_data, Activity = ifelse(Activity == 4, "SITTING",Activity))
mean_std_data <- mutate(mean_std_data, Activity = ifelse(Activity == 5, "STANDING",Activity))
mean_std_data <- mutate(mean_std_data, Activity = ifelse(Activity == 6, "LAYING",Activity))

#step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject
by_Subject_Activity <- group_by(mean_std_data, Subject, Activity)
tidy_data <- summarise_each(by_Subject_Activity, "mean")
write.table(tidy_data, file = "./tidy.txt", row.names = FALSE)