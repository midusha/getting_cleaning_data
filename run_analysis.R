run_analysis <- function() {
  ## read the training and test datasets
  act <- read.table("UCI HAR Dataset\\activity_labels.txt")
  names(act) <- c("activitylabel", "activityname")
  features <- read.table("UCI HAR Dataset\\features.txt")
  x_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
  y_train <- read.table("UCI HAR Dataset\\train\\Y_train.txt")
  x_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
  y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")
  subj_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
  subj_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
  
  ## combine the training and test sets
  x_total <- rbind(x_train, x_test)
  names(x_total) <- features[,2]
  y_total <- rbind(y_train, y_test)
  names(y_total) <- "activitylabel"
  subj_total <- rbind(subj_train, subj_test)
  names(subj_total) <- "subject"
  rm(x_train, x_test, y_train, y_test, subj_train, subj_test)
  
  ## extract measurements on mean and standard deviations only
  meanstd <- grepl("mean", names(x_total)) | grepl("std", names(x_total))
  x_total <- x_total[, meanstd]
  total<-cbind(subj_total, y_total, x_total)
  rm(x_total, y_total, subj_total)
  
  ## tidy variable names
  # names(total) <- tolower(names(total))
  names(total) <- gsub("[()-]", "", names(total))
  
  ## use descriptive activity names
  total <- merge(act, total)
  library(dplyr)
  total <- select(total, -activitylabel)
  
  ## calculate average for each subject and activity
  total <- total %>% group_by(activityname, subject) %>% summarize_each(funs(mean))
  
  ## write result to file
  write.table(total, "tidyData.txt", row.names = FALSE)
}
