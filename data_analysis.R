# Gathering Data ####
features <- read.table("UCI HAR Dataset/features.txt")[,2]

# helper functions

# Load the train data
trainX <- cbind(
  read.table("UCI HAR Dataset/train/subject_train.txt"),
  read.table("UCI HAR Dataset/train/y_train.txt"),
  read.table("UCI HAR Dataset/train/X_train.txt"))

colnames(trainX) <- unlist(list(
  as.factor("subject"), 
  as.factor("activity"), 
  features))



# Load the test data
testX <- cbind(
  read.table("UCI HAR Dataset/test/subject_test.txt"),
  read.table("UCI HAR Dataset/test/y_test.txt"),
  read.table("UCI HAR Dataset/test/X_test.txt"))
colnames(testX) <- unlist(list(
  as.factor("subject"),
  as.factor("activity"),
  features))

# merge the two frames
# DX is all the data combined into one data.frame
DX <- rbind(testX, trainX)

# Cleaning the Data ####
# pick out the columns for subject, activity, mean() and standard deviation 
filter <- unlist(list("subject", "activity",
                      grep("mean()",colnames(DX), value = T, fixed = T),
                      grep("std()", colnames(DX), value = T, fixed = T)
                      ))

#This should give a data.frame with 68 variables (subject + activity + 66 measurements)
#The data is long form (each row is data from one observation)
#DF is the filtered data.
DF <- DX[,filter]

# factorize activities (replace numeric code with a descriptive label)
labels <- read.table("UCI HAR Dataset/activity_labels.txt")[[2]]
DF$activity <- labels[DF$activity]

write.table(DF, "DF_tidy.txt", row.names = FALSE)
