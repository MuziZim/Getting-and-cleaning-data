# Getting-and-cleaning-data
Final assignment for Coursera course

The steps discussed below are the ones followed to create the tidy dataset. The name of the tidy dataset is third_step - use this should you wish to save it in a specific, separate file. The name of the separate file to be created with all the means is the new_set file.

Steps outlined below:
--------------------------------------------------
"1. Merge the training and the test sets to create one data set"

This will merge the X_test.txt and X_train.txt files. Given that the data was a single set which was split 70%/30%,  
it should be merged in the same way - i.e. one after the other.

--------------------------------------------------
"2. Extracts only the measurements on the mean and standard deviation for each measurement"

Of the 561 features measured, this assignment requires only the mean and standard deviation measures:

1 tBodyAcc-mean()-X 
2 tBodyAcc-mean()-Y 
3 tBodyAcc-mean()-Z 
4 tBodyAcc-std()-X  
5 tBodyAcc-std()-Y  
6 tBodyAcc-std()-Z  
41 tGravityAcc-mean()-X 
42 tGravityAcc-mean()-Y 
43 tGravityAcc-mean()-Z 
44 tGravityAcc-std()-X  
45 tGravityAcc-std()-Y  
46 tGravityAcc-std()-Z  
81 tBodyAccJerk-mean()-X  
82 tBodyAccJerk-mean()-Y  
83 tBodyAccJerk-mean()-Z  
84 tBodyAccJerk-std()-X 
85 tBodyAccJerk-std()-Y 
86 tBodyAccJerk-std()-Z 
121 tBodyGyro-mean()-X  
122 tBodyGyro-mean()-Y  
123 tBodyGyro-mean()-Z  
124 tBodyGyro-std()-X 
125 tBodyGyro-std()-Y 
126 tBodyGyro-std()-Z 
161 tBodyGyroJerk-mean()-X  
162 tBodyGyroJerk-mean()-Y  
163 tBodyGyroJerk-mean()-Z  
164 tBodyGyroJerk-std()-X 
165 tBodyGyroJerk-std()-Y 
166 tBodyGyroJerk-std()-Z 
201 tBodyAccMag-mean()  
202 tBodyAccMag-std() 
214 tGravityAccMag-mean() 
215 tGravityAccMag-std()  
227 tBodyAccJerkMag-mean()  
228 tBodyAccJerkMag-std() 
240 tBodyGyroMag-mean() 
241 tBodyGyroMag-std()  
253 tBodyGyroJerkMag-mean() 
254 tBodyGyroJerkMag-std()  
266 fBodyAcc-mean()-X 
267 fBodyAcc-mean()-Y 
268 fBodyAcc-mean()-Z 
269 fBodyAcc-std()-X  
270 fBodyAcc-std()-Y  
271 fBodyAcc-std()-Z  
345 fBodyAccJerk-mean()-X 
346 fBodyAccJerk-mean()-Y 
347 fBodyAccJerk-mean()-Z 
348 fBodyAccJerk-std()-X  
349 fBodyAccJerk-std()-Y  
350 fBodyAccJerk-std()-Z  
424 fBodyGyro-mean()-X  
425 fBodyGyro-mean()-Y  
426 fBodyGyro-mean()-Z  
427 fBodyGyro-std()-X 
428 fBodyGyro-std()-Y 
429 fBodyGyro-std()-Z 
503 fBodyAccMag-mean()  
504 fBodyAccMag-std() 
516 fBodyBodyAccJerkMag-mean()  
517 fBodyBodyAccJerkMag-std() 
529 fBodyBodyGyroMag-mean() 
530 fBodyBodyGyroMag-std()  
542 fBodyBodyGyroJerkMag-mean() 
543 fBodyBodyGyroJerkMag-std()  

--------------------------------------------------

"3. Use descriptive activity names to name the activities in the data set"

The descriptive names for the activities are the following; 
1 WALKING 
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING 
5 STANDING  
6 LAYING  

The descriptions files are the y_train.txt and y_test.txt.

--------------------------------------------------

"4. Appropriately label the data set with descriptive variable names."

Rename the file with variable names V1:V561 with the descriptions from the features file: features.txt

--------------------------------------------------

"5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject."

Incorporate subject identification data: subject_train.txt and subject_test.txt

Roll-up (like a pivot-table) to show the following;
Columns: variables
Rows (l1): subject
Rows (l2): activity type
