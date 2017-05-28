==================================================================
## Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

## Transformations:
### Following transformations have been applied to the original dataset:
* Read and combine the training and test datasets
* Extract measurements on mean and standard deviations only
* Tidy variable names by removing (,) and - from the names
* Use descriptive activity names by merging with activity dataset
* Calculate average for each subject and activity
* Write final output to "tidyData.txt"

### Final tidy data consists the average values for following headers for each activity and subject:
* activityname
* subject
* tBodyAccmeanX
* tBodyAccmeanY
* tBodyAccmeanZ
* tBodyAccstdX
* tBodyAccstdY
* tBodyAccstdZ
* tGravityAccmeanX
* tGravityAccmeanY
* tGravityAccmeanZ
* tGravityAccstdX
* tGravityAccstdY
* tGravityAccstdZ
* tBodyAccJerkmeanX
* tBodyAccJerkmeanY
* tBodyAccJerkmeanZ
* tBodyAccJerkstdX
* tBodyAccJerkstdY
* tBodyAccJerkstdZ
* tBodyGyromeanX
* tBodyGyromeanY
* tBodyGyromeanZ
* tBodyGyrostdX
* tBodyGyrostdY
* tBodyGyrostdZ
* tBodyGyroJerkmeanX
* tBodyGyroJerkmeanY
* tBodyGyroJerkmeanZ
* tBodyGyroJerkstdX
* tBodyGyroJerkstdY
* tBodyGyroJerkstdZ
* tBodyAccMagmean
* tBodyAccMagstd
* tGravityAccMagmean
* tGravityAccMagstd
* tBodyAccJerkMagmean
* tBodyAccJerkMagstd
* tBodyGyroMagmean
* tBodyGyroMagstd
* tBodyGyroJerkMagmean
* tBodyGyroJerkMagstd
* fBodyAccmeanX
* fBodyAccmeanY
* fBodyAccmeanZ
* fBodyAccstdX
* fBodyAccstdY
* fBodyAccstdZ
* fBodyAccmeanFreqX
* fBodyAccmeanFreqY
* fBodyAccmeanFreqZ
* fBodyAccJerkmeanX
* fBodyAccJerkmeanY
* fBodyAccJerkmeanZ
* fBodyAccJerkstdX
* fBodyAccJerkstdY
* fBodyAccJerkstdZ
* fBodyAccJerkmeanFreqX
* fBodyAccJerkmeanFreqY
* fBodyAccJerkmeanFreqZ
* fBodyGyromeanX
* fBodyGyromeanY
* fBodyGyromeanZ
* fBodyGyrostdX
* fBodyGyrostdY
* fBodyGyrostdZ
* fBodyGyromeanFreqX
* fBodyGyromeanFreqY
* fBodyGyromeanFreqZ
* fBodyAccMagmean
* fBodyAccMagstd
* fBodyAccMagmeanFreq
* fBodyBodyAccJerkMagmean
* fBodyBodyAccJerkMagstd
* fBodyBodyAccJerkMagmeanFreq
* fBodyBodyGyroMagmean
* fBodyBodyGyroMagstd
* fBodyBodyGyroMagmeanFreq
* fBodyBodyGyroJerkMagmean
* fBodyBodyGyroJerkMagstd
* fBodyBodyGyroJerkMagmeanFreq