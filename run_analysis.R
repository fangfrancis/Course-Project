#Getting and Cleaning Data: Course Project

# 0. Read data
features <- read.table("~/UCI HAR Dataset/features.txt")
activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt")
subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("~/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("~/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt")

# 1. Merges the training and the test sets to create one data set.
subject_all <- rbind(subject_test, subject_train)
x_all <- rbind(x_test, x_train)
y_all <- rbind(y_test, y_train)

# 4. Appropriately labels the data set with descriptive variable names.
names(subject_all) <- c("subject")
names(x_all) <- features$V2
names(y_all) <- c("activity")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
col_mstd<-grep("mean|std",features$V2)
x_all <- x_all[,col_mstd]

# 3. Uses descriptive activity names to name the activities in the data set
data_all <- cbind(subject_all, y_all, x_all)
data_all[,2] <- factor(data_all[,2],activity_labels[[1]],activity_labels[[2]])

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
suppressWarnings(tidy_data <- aggregate(data_all, by=list(data_all$subject, data_all$activity), FUN=mean))
tidy_data <- subset(tidy_data,select = -c(subject,activity))
names(tidy_data)[1:2] <- c("subject","activity")
write.table(tidy_data, file="tidy_data.txt", row.names=FALSE)