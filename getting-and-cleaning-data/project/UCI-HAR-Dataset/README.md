This is the repo for coursera's Getting and Cleanning Data course project. The goal of the project is to clean a data set about Samsung smartphone use. The end result is a dity data set with descriptive variable names and a clean codebook. In addition to descriptions of data variables, the codebook also documents any transformation work that led to the tidy data set. 

The source data is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data set contains 

The R script in this repo, run_analysis.R, accomplishes the following:

  1. Merges the training and the test sets to create one data set.
  2. xtracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
