###Codebook for coursera "Getting and Cleaning Data" course project

###Raw Data Set 

Raw data for this project are obtained from UCI Machine Learning repository: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data set contains results from experiments with 30 individuals (subject) with each doing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S II smartphone on the waist. Embedded accelerometer and gyroscope captured 3-axial (XYZ) linear acceleration and 3-axial (XYZ) angular velocity. The dataset is randomly partitioned into two sets, where 70% of the subjects was selected for generating the training data and 30% the test data.

The raw data set contains:
- Subject id: 1-30
- Activity labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.	

###Raw Data transformation

The raw data is transformed into a tidy data set in the following steps, using the script, run_analysis.R:
 1. Merged the training and the test sets to create one data set.
 2. Extracted only the measurements on the mean and standard deviation for each measurement.
 3. Used descriptive activity names to name the activities in the data set
 4. Appropriately labeled the data set with descriptive variable names.
 5. Created an independent tidy data set with the average of each variable for each activity and each subject.

###Tidy data set

The tidy data set contains means and standard deviations of measurements. It has 180 records (rows). Ease record represents 1 of 6 activities performed by each of 30 subjects.

There are 68 variables (columns) for each record. Variable names are composed of the following information along with naming convention:
- Measurement unit: t (time) or f (frequency)
- Measurement content: Body (body accelaration) or Gravity (gravity)
- Device: Acc (accelerometer) or Gyro (gyroscope)
- Signal types: Jerk or Mag
- Stats: Stats: mean (mean) or std (standard deviation)
- Signal axes: X or Y or Z

Complete list of variables:





