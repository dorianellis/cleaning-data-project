## Getting and Cleaning Data - Course Project
This script is designed to extract, clean, merge and simplify data from an experiment looking at "Human Activity Recognition Using Smartphones Dataset".  For further details on the experiment and the source data please view the README file in the source data pack or visit: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Files
This repo contains the following files:
* README.md - this file.
* CodeBook.md - a description of the data variable in the output file and details of transformations performed on the source data.
* run_analysis.R - the R script to exract and transform the source data and produce the output file.

###Output
This script generates a single, space-delimited, text file named 'HAR_DATA.txt'.
 * Location: './training-analysis/'
 * Content:  Merged training and test sets showing the average of each variable for each activity and each subject. For details, please see CodeBook.md.

###Prerequisites
To run this script you must have the following in place:
* Source data files: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* These source data files available in your R working directory in a sub-folder './training-analysis/'
* The script requires R 'data.table' library to be installed

###Source file overview
The source dataset download contains many files but only the following will be used by this script:
* 'features.txt': List of all measurement features in the main data sets.
* 'activity_labels.txt': Links the activity class labels with their activity name.
* 'train/X_train.txt': Main Training set.
* 'train/y_train.txt': Identifies the activity performed for each window sample.
* 'train/subject_train.txt': Identifies the Train subject who performed the activity for each window sample.
* 'test/X_test.txt': Main Test set.
* 'test/y_test.txt': Identifies the activity performed for each window sample.
* 'test/subject_train.txt': Identifies the Test subject who performed the activity for each window sample.

======================================================
#### License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012

For more information about the source dataset contact: activityrecognition@smartlab.ws

