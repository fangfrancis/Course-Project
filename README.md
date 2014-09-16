The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

Here are the data for the project: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

The Samsung data is in my working directory, "run_analysis.R" is a R script that uses this dataset and creates a tidy data that can be used for later analysis. a 
The CodeBook.md, describing the variables, the data, and any transformations or work that you performed to clean up the data is the repo. The script will run the following process to generate tidy_data_all.txt:

1. Merges the training and the test sets to create one data set.
4. Appropriately labels the data set with descriptive variable names. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.