Variables in run_analysis.R script
features	Data read from features.txt
col_names	Transformation made on features to produce column names
x_train		Date read from x_train.txt and assigned column names from col_names
x_test		Date read from x_test.txt and assigned column names from col_names
y_train		Date read from y_train.txt and assigned  "Activity" to column name
y_test		Date read from y_test.txt and assigned "Activity" to column name
subject_train	Date read from subject_train.txt and assigned "Subject" to column name 
subject_test	Date read from subject_test.txt and assigned "Subject" to column name
merged_test		 Add columns "Subject" And "Activity" to x_test dataset
merged_train	 Add columns "Subject" And "Activity" to x_train dataset
merged_data		 The merge of train and test datasets in on dataset
mean_std_data 	 The mean and standard deviation for each measurement
by_Subject_Activity 	
tidy_data		The final tidy data

Column Names
Subject
Activity
tBodyAcc.mean...X
tBodyAcc.mean...Y
tBodyAcc.mean...Z
tGravityAcc.mean...X
tGravityAcc.mean...Y
tGravityAcc.mean...Z
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y
tBodyAccJerk.mean...Z
tBodyGyro.mean...X
tBodyGyro.mean...Y
tBodyGyro.mean...Z
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y
tBodyGyroJerk.mean...Z
tBodyAccMag.mean
tGravityAccMag.mean
tBodyAccJerkMag.mean
tBodyGyroMag.mean
tBodyGyroJerkMag.mean
fBodyAcc.mean...X
fBodyAcc.mean...Y
fBodyAcc.mean...Z
fBodyAcc.meanFreq...X
fBodyAcc.meanFreq...Y
fBodyAcc.meanFreq...Z
fBodyAccJerk.mean...X
fBodyAccJerk.mean...Y
fBodyAccJerk.mean...Z
fBodyAccJerk.meanFreq...X
fBodyAccJerk.meanFreq...Y
fBodyAccJerk.meanFreq...Z
fBodyGyro.mean...X
fBodyGyro.mean...Y
fBodyGyro.mean...Z
fBodyGyro.meanFreq...X
fBodyGyro.meanFreq...Y
fBodyGyro.meanFreq...Z
fBodyAccMag.mean
fBodyAccMag.meanFreq
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.meanFreq
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.meanFreq
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.meanFreq
angle.tBodyAccMean.gravity.
angle.tBodyAccJerkMean..gravityMean.
angle.tBodyGyroMean.gravityMean.
angle.tBodyGyroJerkMean.gravityMean.
angle.X.gravityMean.
angle.Y.gravityMean.
angle.Z.gravityMean.
tBodyAcc.std...X
tBodyAcc.std...Y
tBodyAcc.std...Z
tGravityAcc.std...X
tGravityAcc.std...Y
tGravityAcc.std...Z
tBodyAccJerk.std...X
tBodyAccJerk.std...Y
tBodyAccJerk.std...Z
tBodyGyro.std...X
tBodyGyro.std...Y
tBodyGyro.std...Z
tBodyGyroJerk.std...X
tBodyGyroJerk.std...Y
tBodyGyroJerk.std...Z
tBodyAccMag.std
tGravityAccMag.std
tBodyAccJerkMag.std
tBodyGyroMag.std
tBodyGyroJerkMag.std
fBodyAcc.std...X
fBodyAcc.std...Y
fBodyAcc.std...Z
fBodyAccJerk.std...X
fBodyAccJerk.std...Y
fBodyAccJerk.std...Z
fBodyGyro.std...X
fBodyGyro.std...Y
fBodyGyro.std...Z
fBodyAccMag.std
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.std

