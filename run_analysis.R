#library(dplyr)
# Step 1: Merging the training and test sets
# Set your working directory to the folder containing the data
# Replace 'path_to_data' with your actual path
#filename <- "getdata_projectfiles_UCI HAR Dataset.zip"

# Checking if archieve already exists.
#if (!file.exists(filename)){
  #fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  #download.file(fileURL, filename)
#}  

# Checking if folder exists
#if (!file.exists("UCI HAR Dataset")) { 
  #unzip(filename) 
#}
#head(features)
# ========================================================================================================
# Description:   run_analysis.R - Getting and Cleaning Data - John Hopkins University
#
#                This R script called run_analysis.R does the following:
#                1. Merges the training and the test sets to create one data set.
#                2. Extracts only the measurements on the mean and standard deviation for each
#                   measurement.
#                3. Uses descriptive activity names to name the activities in the data set
#                4. Appropriately labels the data set with descriptive variable names.
#                5. From the data set in step 4, creates a second, independent tidy data set
#                   with the average of each variable for each activity and each subject.
#
# Data Resource:    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Data Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# Authhor:       Bruno Hunkeler
# Date:          xx.12.2015
#
# ========================================================================================================

# ========================================================================================================
# Load Libraries
# ========================================================================================================

install.packages("tidyr")

library(dplyr)
library(tidyr)

# Download and extract the ZipFile if not already downloaded
if (!file.exists("UCI HAR Dataset")) {
  dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(dataURL, destfile = "UCI_HAR_Dataset.zip")
  unzip("UCI_HAR_Dataset.zip")
}

# Load training data files X_train.txt, y_train.txt, and subject_train.txt
train.x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./UCI HAR Dataset/train/y_train.txt")
train.subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Load test data files X_test.txt, y_test.txt, and subject_test.txt
test.x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./UCI HAR Dataset/test/y_test.txt")
test.subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merge the training and test sets vertically
merged.x <- bind_rows(train.x, test.x)
merged.y <- bind_rows(train.y, test.y)
merged.subjects <- bind_rows(train.subjects, test.subjects)

# Add feature names to columns
feature.names <- read.table("./UCI HAR Dataset/features.txt") %>% select(V2)
colnames(merged.x) <- feature.names$V2

# Extract only the measurements on the mean and standard deviation
merged.subset <- merged.x %>% select(matches("mean|std"))

# Load activity labels data
activity.y <- read.table("./UCI HAR Dataset/activity_labels.txt")
merged.y <- merged.y %>% mutate(ActivityLabel = activity.y$V2[.$V1])


# Rename columns
colnames(merged.y) <- c("ActivityID", "ActivityLabel")
colnames(merged.subjects) <- "Subject"

# Merge all data into a single data set
merged.data <- cbind(merged.subjects, merged.y, merged.x)

# Create a tidy dataset with the average of each variable for each activity and subject
# Ensure unique column names for merged.x
# Ensure unique column names for merged.x
merged.x <- merged.x %>%
  setNames(make.names(names(.), unique = TRUE))

# Select specific columns and calculate the mean
tidy.data <- cbind(merged.subjects, merged.y, merged.x) %>%
  select(Subject, ActivityLabel, matches("mean|std")) %>%
  group_by(Subject, ActivityLabel) %>%
  summarise_all(mean)



# Write the tidy data to a file
write.table(tidy.data, file = "./tidy_data.txt", row.names = FALSE)

# Print the first few rows of the tidy data
head(tidy.data)
