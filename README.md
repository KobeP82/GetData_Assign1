# GetData_Assign1

Welcome to my repository for the Coursera - Getting and Cleaning Data course project

To reporduce the tidy_data_means.txt submitted for the Coursera - Getting and Cleaning Data course project:
* Unzip the "getdata-projectfiles-UCI HAR Dataset.zip" file in your R working directory;
* Check that the working directory now contains a folder "UCI HAR Dataset" which has all the data in it;
* Run the run.analysis.R script included in this repository.

The run.analysis.R script will:
* Load the training and test data, as well as the features key and activity labels key into R;
* Add the relevant column names;
* Convert the subjects and activities into labelled factors;
* Combine the training and test sets into one data set;
* Subset this data set for variables that refer to "mean" or "std" only
* Average these variables by subject ID and actvity
* Write the resulting averages to a file called "tidy_data_means.txt"

In addition to the R script, this repository contains a code book called "code_book.md" describing the variables in the tidy_data_means.txt file




