# CodeBook for TIdy_Data
## Data Set 
The dataset described in this code book is available in the "tidy_data.txt" file within this repository.
For additional context and background information on this dataset, please refer to the README.md file provided in this repository.

## Variables
### 1.Subject
Identifies the participant in the study.
-Integer values from 1 to 30.

### 2.ActivityLabel
Descriptive labels for the activities performed by the subjects.
-The possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

### 3.Mean and Standard Deviation Measurements
- The dataset includes various measurements on mean and standard deviation. These measurements were extracted from the original dataset based on their names, which include "mean" or "std."
  
-Accelerometer Signals (Time Domain):
   
   - tBodyAccMeanX
   - tBodyAccMeanY
   - tBodyAccMeanZ
   - tBodyAccStdX
   - tBodyAccStdY
   - tBodyAccStdZ
     
-Gravity Accelerometer Signals (Time Domain):

     - tGravityAccMeanX
     - tGravityAccMeanY
     - tGravityAccMeanZ
     - tGravityAccStdX
     - tGravityAccStdY
     - tGravityAccStdZ
     
-Accelerometer Jerk Signals (Time Domain):

   - tBodyAccJerkMeanX
   - tBodyAccJerkMeanY
   - tBodyAccJerkMeanZ
   - tBodyAccJerkStdX
   - tBodyAccJerkStdY
   - tBodyAccJerkStdZ
     
-Gyroscope Signals (Time Domain):

   - tBodyGyroMeanX
   - tBodyGyroMeanY
   - tBodyGyroMeanZ
   - tBodyGyroStdX
   - tBodyGyroStdY
   - tBodyGyroStdZ
     
-Gyroscope Jerk Signals (Time Domain):

   - tBodyGyroJerkMeanX
   - tBodyGyroJerkMeanY
   - tBodyGyroJerkMeanZ
   - tBodyGyroJerkStdX
   - tBodyGyroJerkStdY
   - tBodyGyroJerkStdZ
     
-Accelerometer Magnitude Signals (Time Domain):

   - tBodyAccMagMean
   - tBodyAccMagStd
     
-Gravity Accelerometer Magnitude Signals (Time Domain):

   - tGravityAccMagMean
   - tGravityAccMagStd
     
-Accelerometer Jerk Magnitude Signals (Time Domain):

   - tBodyAccJerkMagMean
   - tBodyAccJerkMagStd
-Gyroscope Magnitude Signals (Time Domain):

   - tBodyGyroMagMean
   - tBodyGyroMagStd
     
-Gyroscope Jerk Magnitude Signals (Time Domain):
   - tBodyGyroJerkMagMean
   - tBodyGyroJerkMagStd
     
-Accelerometer Signals (Frequency Domain):

   - fBodyAccMeanX
   - fBodyAccMeanY
   - fBodyAccMeanZ
   - fBodyAccStdX
   - fBodyAccStdY
   - fBodyAccStdZ
   - fBodyAccMeanFreqX
   - fBodyAccMeanFreqY
   - fBodyAccMeanFreqZ
     
-Accelerometer Jerk Signals (Frequency Domain):

   - fBodyAccJerkMeanX
   - fBodyAccJerkMeanY
   - fBodyAccJerkMeanZ
   - fBodyAccJerkStdX
   - fBodyAccJerkStdY
   - fBodyAccJerkStdZ
   - fBodyAccJerkMeanFreqX
   - fBodyAccJerkMeanFreqY
   - fBodyAccJerkMeanFreqZ
     
-Gyroscope Signals (Frequency Domain):

   - fBodyGyroMeanX
   - fBodyGyroMeanY
   - fBodyGyroMeanZ
   - fBodyGyroStdX
   - fBodyGyroStdY
   - fBodyGyroStdZ
   - fBodyGyroMeanFreqX
   - fBodyGyroMeanFreqY
   - fBodyGyroMeanFreqZ
     
-Accelerometer Magnitude Signals (Frequency Domain):

   - fBodyAccMagMean
   - fBodyAccMagStd
   - fBodyAccMagMeanFreq

-Accelerometer Jerk Magnitude Signals (Frequency Domain):

   - fBodyAccJerkMagMean
   - fBodyAccJerkMagStd
   - fBodyAccJerkMagMeanFreq
     
-Gyroscope Magnitude Signals (Frequency Domain):

   - fBodyGyroMagMean
   - fBodyGyroMagStd
   - fBodyGyroMagMeanFreq
     
-Gyroscope Jerk Magnitude Signals (Frequency Domain):

   - fBodyGyroJerkMagMean
   - fBodyGyroJerkMagStd
   - fBodyGyroJerkMagMeanFreq
     
-Angle Signals:

   - angleTBodyAccMeanGravity
   - angleTBodyAccJerkMeanGravityMean
   - angleTBodyGyroMeanGravityMean
   - angleTBodyGyroJerkMeanGravityMean
   - angleXGravityMean
   - angleYGravityMean
   - angleZGravityMean
     

## Units
All the measurements are normalized and bounded within [-1,1].

## Data Transformation Steps
1. Downloading and Extracting Data
   - The original data was downloaded from the provided URL and extracted to the working directory.

2. Merging Training and Test Sets
   - Training and test datasets were merged vertically to create a comprehensive dataset.

3. Extracting Mean and Standard Deviation Measurements
   - Only the measurements on mean and standard deviation were extracted from the merged dataset.

4. Labeling and Descriptive Activity Names
   - Descriptive activity names were assigned to the activities in the dataset.

5. Creating a Tidy Dataset
   - A tidy dataset was created with the average of each variable for each activity and subject.

