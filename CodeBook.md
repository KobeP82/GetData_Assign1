## "tidy_data": Code Book (REV00)

Date: 15-Feb-2015

### Data set information
The tidy_data data set is based on the "Human Activity Recognition Using Smartphones Dataset". This is a Human Activity 
Recognition database built from the recordings of subjects performing activities of daily living (ADL) while carrying a waist-mounted 
smartphone with embedded inertial sensors.The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 
years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity 
were captured at a constant rate of 50Hz.

The orginal data set contains 561 features derived from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, subdivided
into a training (70%) and a test (30%) data set. For the generation of the "tidy_data_means" data set the following modifications were done 
to the original data: 
* For both training and test data sets, the subject ID and the activity labels were added to the feature data;
* Activity labels (numbers) were replaced with describing text string (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING);
* The training and test data sets have been combined;
* Only those features representing a "mean" or "standard deviation" have been retained. Other features were removed;
* The means and standard deviations have been averaged per test subject and per activity;
* A .txt file was created called "tidy_data.txt" (space separated, decimal "."). 
The result is a data set containing 180 observations (30 subjects x 6 activities) for 68 variables (subject ID, activity and average values 
for the selected features).

### Attribute information
The data set contains:
* subject: An identifier of the subject who carried out the experiment;
* activity: activity label selected from WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING;
* 66 variables representing the mean and standard deviation of the features derived from the 3-axial raw signals tAcc-XYZ and tGyro-XYZ, 
averaged per subject ID and per activity;

The list of included variables contains the averages of the means and standard deviations per subject ID and per activity for 
the following features (-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyBodyAccJerkMag
* fBodyBodyGyroMag
* fBodyBodyGyroJerkMag


### Additional information
The original data set is available from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

