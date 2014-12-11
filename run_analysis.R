library(plyr)

# Step 1.1
# Set the directory names
# Edit these variables if the data is loaded in different locations
###############################################################################

basepath <- paste(getwd(),"/UCI HAR Dataset", sep="")
testpath <- paste(getwd(),"/UCI HAR Dataset/test", sep="")
trainpath <- paste(getwd(),"/UCI HAR Dataset/train", sep="")

# Step 1.2
# Read all the necessary datasets
###############################################################################

x.train <- read.table(file.path(trainpath, "X_train.txt"))
y.train <- read.table(file.path(trainpath, "y_train.txt"))
subject.train <- read.table(file.path(trainpath, "subject_train.txt"))

x.test <- read.table(file.path(testpath, "X_test.txt"))
y.test <- read.table(file.path(testpath, "y_test.txt"))
subject.test <- read.table(file.path(testpath, "subject_test.txt"))

features <- read.table(file.path(basepath, "features.txt"))

activities <- read.table(file.path(basepath, "activity_labels.txt"))

# Step 1.3
# Merge the training and test sets
###############################################################################

x.merged <- rbind(x.train, x.test)
y.merged <- rbind(y.train, y.test)
subject.merged <- rbind(subject.train, subject.test)

# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement
###############################################################################

# get only columns with -mean or -std in their names
features.selected <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
x.merged <- x.merged[, features.selected]

# Step 3
# Use descriptive activity names to name the activities in the data set
# Label the data set with descriptive variable names.
# Change t to Time, f to Frequency, mean() to Mean and std() to StdDev
# Remove extra dashes and BodyBody naming error from original feature names
###############################################################################

names(x.merged) <- features[features.selected, 2]
names(x.merged) <- gsub("^t", "Time", names(x.merged))
names(x.merged) <- gsub("^f", "Frequency", names(x.merged))
names(x.merged) <- gsub("-mean\\(\\)", "Mean", names(x.merged))
names(x.merged) <- gsub("-std\\(\\)", "StdDev", names(x.merged))
names(x.merged) <- gsub("-", "", names(x.merged))
names(x.merged) <- gsub("BodyBody", "Body", names(x.merged))

# update activity values with activity names
y.merged[, 1] <- activities[y.merged[, 1], 2]

# Step 4
# Appropriately label the data set with descriptive variable names
###############################################################################

# correct column names
names(subject.merged) <- "subject"
names(y.merged) <- "activity"

# bind all the data in a single data set
all.data <- cbind(x.merged, y.merged, subject.merged)

# Step 5
# Calculate the average of each variable for each subject/activity combination
# all.data colums 1:66 are variables 67:68 are activity & subject
# Write the grand average data to a file
###############################################################################


averages.data <- ddply(all.data, .(subject, activity), function(x)
                        colMeans(x[, 1:66]))

write.table(averages.data, "averages_data.txt", row.name=FALSE)