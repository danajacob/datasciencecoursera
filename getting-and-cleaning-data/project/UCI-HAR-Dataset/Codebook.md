###Codebook for coursera "Getting and Cleaning Data" course project

###Raw Data Set 

Raw data are obtained from UCI Machine Learning repository: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data set contains results from experiments with 30 individuals (subject) with each doing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S II smartphone on the waist. Embedded accelerometer and gyroscope captured 3-axial (XYZ) linear acceleration and 3-axial (XYZ) angular velocity. The dataset is randomly partitioned into two sets, where 70% of the subjects was selected for generating the training data and 30% the test data.

The raw data set contains:
- Subject identifier: 1-30
- Six activities performed by each subject: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.	

###Raw Data transformation

The raw data is transformed into a tidy data set in the following steps, using the script, run_analysis.R:
 1. Merged the training and the test sets to create one data set.
 2. Extracted only the measurements on the mean and standard deviation for each measurement.
 3, Used descriptive activity names to name the activities in the data set
 4. Appropriately labeled the data set with descriptive variable names.
 5. Created an independent tidy data set with the average of each variable for each activity and each subject.

###Tidy data set

The tidy data set contains 180 records (rows). Ease record represents 1 of 6 activities performed by each of 30 subjects.

There are 68 variables (columns) for each record:
- Subject identifier: value 1-30
- Six activities performed by each of the 30 subjects: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- Stats: Means and Standard Deviation of time and frequency
- Measurements: Body linear acceleration and gravity
- Measuring device: accelerometer and gyroscope
- Signal types: Jerk signals
- Signal axes: XYZ

######Variables naming convention:
- Measurements: t (time), f (frequency)
- Device: Acc (accelerometer), Gyro (gyroscope)
- Stats: mean (mean), std (standard deviation)
- Signal axes: XYZ
	
######Complete list of variables:
        subject
        label
        tBodyAcc-mean()-X
        tBodyAcc-mean()-Y
        tBodyAcc-mean()-Z
        tBodyAcc-std()-X
        tBodyAcc-std()-Y
        tBodyAcc-std()-Z
        tGravityAcc-mean()-X
        tGravityAcc-mean()-Y
        tGravityAcc-mean()-Z
        tGravityAcc-std()-X
        tGravityAcc-std()-Y
        tGravityAcc-std()-Z
        tBodyAccJerk-mean()-X
        tBodyAccJerk-mean()-Y
        tBodyAccJerk-mean()-Z
        tBodyAccJerk-std()-X
        tBodyAccJerk-std()-Y
        tBodyAccJerk-std()-Z
        tBodyGyro-mean()-X
        tBodyGyro-mean()-Y
        tBodyGyro-mean()-Z
        tBodyGyro-std()-X
        tBodyGyro-std()-Y
        tBodyGyro-std()-Z
        tBodyGyroJerk-mean()-X
        tBodyGyroJerk-mean()-Y
        tBodyGyroJerk-mean()-Z
        tBodyGyroJerk-std()-X
        tBodyGyroJerk-std()-Y
        tBodyGyroJerk-std()-Z
        tBodyAccMag-mean()
        tBodyAccMag-std()
        tGravityAccMag-mean()
        tGravityAccMag-std()
        tBodyAccJerkMag-mean()
        tBodyAccJerkMag-std()
        tBodyGyroMag-mean()
        tBodyGyroMag-std()
        tBodyGyroJerkMag-mean()
        tBodyGyroJerkMag-std()
        fBodyAcc-mean()-X
        fBodyAcc-mean()-Y
        fBodyAcc-mean()-Z
        fBodyAcc-std()-X
        fBodyAcc-std()-Y
        fBodyAcc-std()-Z
        fBodyAccJerk-mean()-X
        fBodyAccJerk-mean()-Y
        fBodyAccJerk-mean()-Z
        fBodyAccJerk-std()-X
        fBodyAccJerk-std()-Y
        fBodyAccJerk-std()-Z
        fBodyGyro-mean()-X
        fBodyGyro-mean()-Y
        fBodyGyro-mean()-Z
        fBodyGyro-std()-X
        fBodyGyro-std()-Y
        fBodyGyro-std()-Z
        fBodyAccMag-mean()
        fBodyAccMag-std()
        fBodyBodyAccJerkMag-mean()
        fBodyBodyAccJerkMag-std()
        fBodyBodyGyroMag-mean()
        fBodyBodyGyroMag-std()
        fBodyBodyGyroJerkMag-mean()
        fBodyBodyGyroJerkMag-std()
