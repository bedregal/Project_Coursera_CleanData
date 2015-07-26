
library(reshape2)
library(data.table)

#Reading Data ZIP file
datafile <- "getdata-projectfiles-UCI HAR Dataset.zip"

# Reading measurements of 561 features from the test and training datasets 
feat_train <- read.table(unz(datafile, "UCI HAR Dataset/train/X_train.txt"))
feat_test <- read.table(unz(datafile, "UCI HAR Dataset/test/X_test.txt"))

# Combining Measurements of the training and testing sets in a single data frame
feat <- rbind(feat_train,feat_test)


# Reading Activity flags (1:6) for each set of 561 features in the test and training datasets
flg_Act_train <- read.table(unz(datafile, "UCI HAR Dataset/train/y_train.txt"))
flg_Act_test <- read.table(unz(datafile, "UCI HAR Dataset/test/y_test.txt"))
flg_Act <- rbind(flg_Act_train,flg_Act_test) # Combining test and train sets

# Giving descriptive names to each Activity using this function
fn_name_activity <- function(input) {
        
        if(input == 1) {result <- "walk"}
        if(input == 2) {result <- "walk_up"}
        if(input == 3) {result <- "walk_down"}
        if(input == 4) {result <- "sit"}
        if(input == 5) {result <- "stand"}
        if(input == 6) {result <- "lay"}
        
        return(result)
}

strg_Act <- sapply(as.numeric(unlist(flg_Act)), fn_name_activity)


# Reading the Subject flag (1:30) for each set of 561 features in the test and training datasets
flg_Subj_train <- read.table(unz(datafile, "UCI HAR Dataset/train/subject_train.txt"))
flg_Subj_test <- read.table(unz(datafile, "UCI HAR Dataset/test/subject_test.txt"))
flg_Subj <- rbind(flg_Subj_train, flg_Subj_test) # Combining test and trainind sets

# Reading the 561 feature names
flg_Feat <- read.table(unz(datafile, "UCI HAR Dataset/features.txt"))


# Select only those Features (column names) with the strings "mean" and "std" in their names
flg_Feat_select <- grepl("mean", flg_Feat[,2]) | grepl("std", flg_Feat[,2]) 
feat_sel <- feat[,flg_Feat_select]

# Incorporates the Activity and Subject flag information into the above training+testing data frame
feat_all <- cbind(flg_Subj, strg_Act, feat_sel)

# Giving meaningful variable names
colnames(feat_all) <- c("Subject", "Activity", as.character(flg_Feat[flg_Feat_select,2]))


# Finally, we make a second tidy dataset with the average value of each of the 79 
# selected Features for each Activity and Subject. For this we use the "melt" and "dcast"
# from the reshape2 package.

featMelt <- melt(feat_all, id=c("Subject", "Activity"), 
                 measure.vars=as.character(flg_Feat[flg_Feat_select,2]))

feat_tidy <- dcast(featMelt, Subject + Activity ~ variable, mean)

# Changing average feature names (columns) in data frame.
setnames(feat_tidy, old=names(feat_tidy), new=c("Subject", "Activity", 
                paste("Avg_", names(feat_tidy[3:ncol(feat_tidy)]), sep="")))

# Saving result in txt file
write.table(feat_tidy, file="tidy_dataset.txt", row.name=F)
