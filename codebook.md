## Codebook for Getting and Cleaning Data Course Project

This file is adapted from the file descriptions included with the UCI HAR Dataset.

The dataset tidyData.csv contains the mean of each attribute from the UCI HAR Dataset listed below, summarized by subject and activity. 

**Subject and Activity:**

The first two columns contain the subject and activity:
- *subject*: indicates the subject number (1 through 30)
- *activity*: descibes the activity. The activity can be one of the following six values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

**Attributes:**

*(adapted from features_info.txt")* The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'freqency' to indicate frequency domain signals).

**Units:**
- *Acceleration* signals (denoted Acc) are in standard gravity units 'g'
- *Angular Velocity* signals (denoted Gyro) are in radians/second

**Attributes:**
- time.BodyAcc.mean.Y
- time.BodyAcc.mean.X
- time.BodyAcc.mean.Z
- time.BodyAcc.std.X
- time.BodyAcc.std.Y
- time.BodyAcc.std.Z
- time.GravityAcc.mean.X
- time.GravityAcc.mean.Y
- time.GravityAcc.mean.Z
- time.GravityAcc.std.X
- time.GravityAcc.std.Y
- time.GravityAcc.std.Z
- time.BodyAccJerk.mean.X
- time.BodyAccJerk.mean.Y
- time.BodyAccJerk.mean.Z
- time.BodyAccJerk.std.X
- time.BodyAccJerk.std.Y
- time.BodyAccJerk.std.Z
- time.BodyGyro.mean.X
- time.BodyGyro.mean.Y
- time.BodyGyro.mean.Z
- time.BodyGyro.std.X
- time.BodyGyro.std.Y
- time.BodyGyro.std.Z
- time.BodyGyroJerk.mean.X
- time.BodyGyroJerk.mean.Y
- time.BodyGyroJerk.mean.Z
- time.BodyGyroJerk.std.X
- time.BodyGyroJerk.std.Y
- time.BodyGyroJerk.std.Z
- time.BodyAccMag.mean
- time.BodyAccMag.std
- time.GravityAccMag.mean
- time.GravityAccMag.std
- time.BodyAccJerkMag.mean
- time.BodyAccJerkMag.std
- time.BodyGyroMag.mean
- time.BodyGyroMag.std
- time.BodyGyroJerkMag.mean
- time.BodyGyroJerkMag.std
- frequency.BodyAcc.mean.X
- frequency.BodyAcc.mean.Y
- frequency.BodyAcc.mean.Z
- frequency.BodyAcc.std.X
- frequency.BodyAcc.std.Y
- frequency.BodyAcc.std.Z
- frequency.BodyAccJerk.mean.X
- frequency.BodyAccJerk.mean.Y
- frequency.BodyAccJerk.mean.Z
- frequency.BodyAccJerk.std.X
- frequency.BodyAccJerk.std.Y
- frequency.BodyAccJerk.std.Z
- frequency.BodyGyro.mean.X
- frequency.BodyGyro.mean.Y
- frequency.BodyGyro.mean.Z
- frequency.BodyGyro.std.X
- frequency.BodyGyro.std.Y
- frequency.BodyGyro.std.Z
- frequency.BodyAccMag.mean
- frequency.BodyAccMag.std
- frequency.BodyBodyAccJerkMag.mean
- frequency.BodyBodyAccJerkMag.std
- frequency.BodyBodyGyroMag.mean
- frequency.BodyBodyGyroMag.std
- frequency.BodyBodyGyroJerkMag.mean
- frequency.BodyBodyGyroJerkMag.std
