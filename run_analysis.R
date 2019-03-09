#Read the data and store it in variables for analysis

training_set <- read.table("./train/X_train.txt")
test_set <- read.table("./test/X_test.txt")
first_step <- rbind(training_set, test_set)               #Merge the datasets - training set on top

#Next, only the relevant columns will be kept - per the request

second_step <- cbind(first_step[, 1:6], first_step[, 41:46])
second_step <- cbind(second_step, first_step[, 81:86])
second_step <- cbind(second_step, first_step[, 121:126])
second_step <- cbind(second_step, first_step[, 161:166])
second_step <- cbind(second_step, first_step[, 201:202])
second_step <- cbind(second_step, first_step[, 214:215])
second_step <- cbind(second_step, first_step[, 227:228])
second_step <- cbind(second_step, first_step[, 240:241])
second_step <- cbind(second_step, first_step[, 253:254])
second_step <- cbind(second_step, first_step[, 266:271])
second_step <- cbind(second_step, first_step[, 345:350])
second_step <- cbind(second_step, first_step[, 424:429])
second_step <- cbind(second_step, first_step[, 503:504])
second_step <- cbind(second_step, first_step[, 516:517])
second_step <- cbind(second_step, first_step[, 529:530])
second_step <- cbind(second_step, first_step[, 542:543])

#Insert the activity codes, then substitute with  activity names

training_set_act <- read.table("./train/y_train.txt")
test_set_act <- read.table("./test/y_test.txt")
act_code_merge <- rbind(training_set_act, test_set_act)
act_names <- c()
  
a <- dim(second_step)
b <- a[1]

for (x in 1:b) {
  
  if(act_code_merge[x, 1] == 1)
  act_names <- rbind(act_names, "WALKING")
  
  else if (act_code_merge[x, 1] == 2)
    act_names <- rbind(act_names, "WALKING_UPSTAIRS")
  
  else if (act_code_merge[x, 1] == 3)
    act_names <- rbind(act_names, "WALKING_DOWNSTAIRS")
  
  else if (act_code_merge[x, 1] == 4)
    act_names <- rbind(act_names, "SITTING")
  
  else if (act_code_merge[x, 1] == 5)
    act_names <- rbind(act_names, "STANDING")
  
  else if (act_code_merge[x, 1] == 6)
    act_names <- rbind(act_names, "LAYING")
  
}

third_step <- cbind(act_names, second_step)

#Rename all the activities

names(third_step) = c("Activity", "tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X", "tBodyAcc-std-Y","tBodyAcc-std-Z","tGravityAcc-mean-X","tGravityAcc-mean-Y","tGravityAcc-mean-Z","tGravityAcc-std-X","tGravityAcc-std-Y","tGravityAcc-std-Z","tBodyAccJerk-mean-X","tBodyAccJerk-mean-Y","tBodyAccJerk-mean-Z","tBodyAccJerk-std-X","tBodyAccJerk-std-Y","tBodyAccJerk-std-Z","tBodyGyro-mean-X","tBodyGyro-mean-Y","tBodyGyro-mean-Z","tBodyGyro-std-X","tBodyGyro-std-Y","tBodyGyro-std-Z","tBodyGyroJerk-mean-X","tBodyGyroJerk-mean-Y","tBodyGyroJerk-mean-Z","tBodyGyroJerk-std-X","tBodyGyroJerk-std-Y","tBodyGyroJerk-std-Z","tBodyAccMag-mean","tBodyAccMag-std","tGravityAccMag-mean","tGravityAccMag-std","tBodyAccJerkMag-mean","tBodyAccJerkMag-std","tBodyGyroMag-mean","tBodyGyroMag-std","tBodyGyroJerkMag-mean","tBodyGyroJerkMag-std","fBodyAcc-mean-X","fBodyAcc-mean-Y","fBodyAcc-mean-Z","fBodyAcc-std-X","fBodyAcc-std-Y","fBodyAcc-std-Z","fBodyAccJerk-mean-X","fBodyAccJerk-mean-Y","fBodyAccJerk-mean-Z","fBodyAccJerk-std-X","fBodyAccJerk-std-Y","fBodyAccJerk-std-Z","fBodyGyro-mean-X","fBodyGyro-mean-Y","fBodyGyro-mean-Z","fBodyGyro-std-X","fBodyGyro-std-Y","fBodyGyro-std-Z","fBodyAccMag-mean","fBodyAccMag-std","fBodyBodyAccJerkMag-mean","fBodyBodyAccJerkMag-std","fBodyBodyGyroMag-mean","fBodyBodyGyroMag-std","fBodyBodyGyroJerkMag-mean","fBodyBodyGyroJerkMag-std")

#Create the new dataset

new_set <- colMeans(third_step[, 2:67])
