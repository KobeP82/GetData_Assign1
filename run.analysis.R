
# data set: UCI Machine Learning Repository Human Activity Recognition Using Smartphones Data Set
# authors: KobeP82

# function: create tidy data set

# prior to running, unzip "getdata-projectfiles-UCI HAR Dataset.zip" into your working directory
# please verify the working directory now contains a folder "UCI HAR Dataset" 
# which has all the data in it

#################################################################################################

### Loading data into R ###

## Read in general information
activity_labels<-read.table(file="UCI HAR Dataset/activity_labels.txt") # activity labels key (1 to 6)
features<-read.table(file="UCI HAR Dataset/features.txt") # features key (1 to 561)

## Read in training data set
X_train<-read.table(file="UCI HAR Dataset/train/X_train.txt")      # time & frequency domain variables
y_train<-read.table(file="UCI HAR Dataset/train/y_train.txt")      # activity labels (1 to 6)
subject_train<-read.table(file="UCI HAR Dataset/train/subject_train.txt") # subjects (1 to 30)

## Read in test data set
X_test<-read.table(file="UCI HAR Dataset/test/X_test.txt")      # time & frequency domain variables
y_test<-read.table(file="UCI HAR Dataset/test/y_test.txt")      # activity labels (1 to 6)
subject_test<-read.table(file="UCI HAR Dataset/test/subject_test.txt") # subjects (1 to 30)

#################################################################################################

### Names & types ###

## Add column names to datasets
colnames(X_train)<- features$V2
colnames(X_test)<- features$V2
colnames(subject_train)<- "subject"
colnames(subject_test)<- "subject"
colnames(y_train)<- "activity"
colnames(y_test)<- "activity"

## Convert Subject & Activity labels to factors
subject_train<-transform(subject_train,subject=factor(subject))
subject_test<-transform(subject_test,subject=factor(subject))
y_train<-transform(y_train,activity=factor(activity,labels=activity_labels$V2))
y_test<-transform(y_test,activity=factor(activity,labels=activity_labels$V2))

###############################################################################################

### Combining separate data sets ###

## Combine training and test data (include a factor variable descibing their origin)
train<-cbind(subject_train,y_train,X_train)
train$Original.dataset<-as.factor("TRAINING") # mark training data as "TRAINING"

test<-cbind(subject_test,y_test,X_test)
test$Original.dataset<-as.factor("TEST") # mark test data as "TEST"

all_data<-rbind(train,test) #Combine training and test data

###############################################################################################

### Subsetting mean & std variables ###

## Determine column names containing "mean" or "std"
subset_mean<-grep("mean",colnames(all_data),value=TRUE) 
subset_std<-grep("std",colnames(all_data),value=TRUE)

## Subset for subject, activity and columns containing "mean" or "std"
tidy_data<-all_data[,c("subject","activity",subset_mean,subset_std)]

##############################################################################################

### Averaging variables to new tidy data set ###

## Create new tidy data set with means by subject & activity
tidy_data_means<-aggregate(tidy_data[-c(1,2)],by=list(tidy_data$subject,
                                                      tidy_data$activity),FUN=mean)
## Update column names to reflect new data set
colnames(tidy_data_means) <- paste("average", colnames(tidy_data_means), sep = "_")
colnames(tidy_data_means)[1]<-"subject"
colnames(tidy_data_means)[2]<-"activity"

#############################################################################################

### Write tidy data set of means to file ###

write.table(tidy_data_means,file="tidy_data.txt",row.names=FALSE)

#############################################################################################
