This is the repo for coursera's "Getting and Cleanning Data" course project. The goal of the project is to clean a data set and create a dity data set with descriptive variable names and a clean codebook. In addition to descriptions of data variables, the codebook also documents any transformation work that led to the tidy data set. 

The source data is the "Human Activity Recognition Using Smartphones Dataset" from the UCI Machine Learning Repository. 

Dataset information is at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

Dataset download is at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

This data records human activities wearing Samsung Galaxy 5 II smartphone. Experiments were carried out with a group of 30 volunteers between the age of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing the smartphone on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The data is randomly partitioned into two sets where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The data set contains the following files: 
- 'README.txt': Provides detailed information about this data set
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample.
- Inertial Signals files for train set and test set

The R script in this repo, run_analysis.R, accomplishes the following:

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
