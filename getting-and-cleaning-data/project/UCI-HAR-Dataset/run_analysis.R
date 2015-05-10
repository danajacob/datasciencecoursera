# 1. Merges the training and the test sets to create one data set

# read all data files
testLabels <- read.table("test/y_test.txt", col.names="label")
testSubjects <- read.table("test/subject_test.txt", col.names="subject")
testActivities <- read.table("test/X_test.txt")
trainLabels <- read.table("train/y_train.txt", col.names="label")
trainSubjects <- read.table("train/subject_train.txt", col.names="subject")
trainActivities <- read.table("train/X_train.txt")

# combine all data into 1 data set
dataTotal <- rbind(cbind(testSubjects, testLabels, testActivities), cbind(trainSubjects, trainLabels, trainActivities))

# get feature names
featureNames <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
columnsMeanStd <- features[grep("mean\\(\\)|std\\(\\)", featureNames$V2), ]
dataSubset <- dataTotal[, c(1, 2, columnsMeanStd$V1+2)]

# 3. Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
dataSubset$label <- activityLabels[dataSubset$label,2]

# 4. Appropriately labels the data set with descriptive variable names
variableNames <- c("subject", "label", columnsMeanStd$V2)
colnames(dataSubset) <- variableNames

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject
dataTidy <- aggregate(dataSubset[, 3:ncol(dataSubset)], 
                      by=list(subject=dataSubset$subject,
                              label=dataSubset$label), mean)

# put dataTidy in a text file to upload to github
write.table(dataTidy, file="dataTidy.txt", row.names=FALSE)