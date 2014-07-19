##DATA DICTIONARY - HAR_DATA.txt

##Data transformations
The following details all processing carried out by 'run_analysis.R' to transformt the source data files into a summarised output 'HAR_DATA.txt'

* Import the 'features.txt' data which describes the columns in X_train and X_test sets 
* Identify columns describing mean and standard deviation values by matching rows ending 'mean()' or 'std()'
* Create a vector of cleaner column names 'colnames' by
  * Removing brackets
  * Keeping the core of label as CamelCase for readability
  * Replacing dashes with underscores
  * Prefix with 'time' or 'freq' instead of 't' or 'f'
  * Fixing a labelling error in the source data where 'BodyBody' appears instead of 'Body'
* Import 'activity_labels.txt' dataset into 'activitytype' data frame and assign column names 'activity_code', 'activity_label'
* Import the 'test/X_test.txt' data to 'xtest', specifying only the target columns identified in the earlier step
* Import the 'test/y_test.txt' activity data to 'ytest'
* Append the 'ytest' to the 'xtest' data frame and create 'ztest'- the rows in both data frames correspond so no sorting or merging required at this stage
* Import the 'test/subject_test.txt' data to 'stest'
* Append the 'stest' to the 'ztest' data frame and create 'fulltest' - the rows in both data frames correspond so no sorting or merging required at this stage
* Append column names 'colnames' to the 'fulltest' data frame ('subject_id', 'activity_type', colnames)
* Import the 'train/X_train.txt' data to 'xtrain', specifying only the target columns identified in the earlier step
* Import the 'train/y_train.txt' activity data to 'ytrain'
* Append the 'ytrain' to the 'xtrain' data frame and create 'ztrain'- the rows in both data frames correspond so no sorting or merging required at this stage
* Import the 'train/subject_train.txt' data to 'strain'
* Append the 'strain' to the 'ztrain' data frame and create 'fulltrain' - the rows in both data frames correspond so no sorting or merging required at this stage
* Append column names 'colnames' to the 'fulltrain' data frame ('subject_id', 'activity_type', colnames)
* Join the two data frames 'fulltest' and 'fulltrain' together into 'dffull' data frame
* Use the 'activitytype' data frame to overwrite the activity ids (numeric) with user-readable activity type names
* Convert 'subject_id' and 'activity_type' to factors
* Load the data.table library so that we can use it to summarise the data
* Create a data.table object 'dtfull' from 'dffull'
* Summarise data (180 observations of  68 variables), grouping by 'subject_id', 'activity_type' and providing the mean of all other columns
* Write out to a text file 'HAR_DATA.txt' with column names but no row labels and a space separator



###Variable detail

- COLUMN_NAME
  - LENGTH
  - DESCRIPTION
  - VALUE_RANGE

=============================================================

- subject_id
  - 2
  - An identifier of the subject who carried out the experiment
  - 1 to 30

- activity_type
  - 1
  - Activity label describing the physical activity undertaken
    - 1	"WALKING"
    - 2	"WALKING_UPSTAIRS"
    - 3	"WALKING_DOWNSTAIRS"
    - 4	"SITTING"
    - 5	"STANDING"
    - 6	"LAYING"
	
- time_BodyAcc_mean_X
  - 18
  - Mean of mean time domain triaxial Body Accelerometer - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAcc_mean_Y
  - 18
  - Mean of mean time domain triaxial Body Accelerometer - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAcc_mean_Z
  - 18
  - Mean of mean time domain triaxial Body Accelerometer - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAcc_std_X
  - 18
  - Mean of standard deviation time domain triaxial Body Accelerometer - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAcc_std_Y
  - 18
  - Mean of standard deviation time domain triaxial Body Accelerometer - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAcc_std_Z
  - 18
  - Mean of standard deviation time domain triaxial Body Accelerometer - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAcc_mean_X
  - 18
  - Mean of mean time domain triaxial Gravity Accelerometer - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAcc_mean_Y
  - 18
  - Mean of mean time domain triaxial Gravity Accelerometer - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAcc_mean_Z
  - 18
  - Mean of mean time domain triaxial Gravity Accelerometer - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAcc_std_X
  - 18
  - Mean of standard deviation time domain triaxial Gravity Accelerometer - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAcc_std_Y
  - 18
  - Mean of standard deviation time domain triaxial Gravity Accelerometer - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAcc_std_Z
  - 18
  - Mean of standard deviation time domain triaxial Gravity Accelerometer - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerk_mean_X
  - 18
  - Mean of mean time domain triaxial Body Accelerometer Jerk - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerk_mean_Y
  - 18
  - Mean of mean time domain triaxial Body Accelerometer Jerk - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerk_mean_Z
  - 18
  - Mean of mean time domain triaxial Body Accelerometer Jerk - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerk_std_X
  - 18
  - Mean of standard deviation time domain triaxial Body Accelerometer Jerk - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerk_std_Y
  - 18
  - Mean of standard deviation time domain triaxial Body Accelerometer Jerk - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerk_std_Z
  - 18
  - Mean of standard deviation time domain triaxial Body Accelerometer Jerk - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyro_mean_X
  - 18
  - Mean of mean time domain triaxial Body Gyroscope - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyro_mean_Y
  - 18
  - Mean of mean time domain triaxial Body Gyroscope - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyro_mean_Z
  - 18
  - Mean of mean time domain triaxial Body Gyroscope - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyro_std_X
  - 18
  - Mean of standard deviation time domain triaxial Body Gyroscope - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyro_std_Y
  - 18
  - Mean of standard deviation time domain triaxial Body Gyroscope - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyro_std_Z
  - 18
  - Mean of standard deviation time domain triaxial Body Gyroscope - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerk_mean_X
  - 18
  - Mean of mean time domain triaxial Body Gyroscope Jerk - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerk_mean_Y
  - 18
  - Mean of mean time domain triaxial Body Gyroscope Jerk - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerk_mean_Z
  - 18
  - Mean of mean time domain triaxial Body Gyroscope Jerk - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerk_std_X
  - 18
  - Mean of standard deviation time domain triaxial Body Gyroscope Jerk - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerk_std_Y
  - 18
  - Mean of standard deviation time domain triaxial Body Gyroscope Jerk - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerk_std_Z
  - 18
  - Mean of standard deviation time domain triaxial Body Gyroscope Jerk - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccMag_mean
  - 18
  - Mean of mean time domain Body Accelerometer Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccMag_std
  - 18
  - Mean of standard deviation time domain Body Accelerometer Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAccMag_mean
  - 18
  - Mean of mean time domain Gravity Accelerometer Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_GravityAccMag_std
  - 18
  - Mean of standard deviation time domain Gravity Accelerometer Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerkMag_mean
  - 18
  - Mean of mean time domain Body Accelerometer Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyAccJerkMag_std
  - 18
  - Mean of standard deviation time domain Body Accelerometer Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroMag_mean
  - 18
  - Mean of mean time domain Body Gyroscope Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroMag_std
  - 18
  - Mean of standard deviation time domain Body Gyroscope Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerkMag_mean
  - 18
  - Mean of mean time domain Body Gyroscope Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- time_BodyGyroJerkMag_std
  - 18
  - Mean of standard deviation time domain Body Gyroscope Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAcc_mean_X
  - 18
  - Mean of mean frequency domain triaxial Body Accelerometer - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAcc_mean_Y
  - 18
  - Mean of mean frequency domain triaxial Body Accelerometer - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAcc_mean_Z
  - 18
  - Mean of mean frequency domain triaxial Body Accelerometer - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAcc_std_X
  - 18
  - Mean of standard deviation frequency domain triaxial Body Accelerometer - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAcc_std_Y
  - 18
  - Mean of standard deviation frequency domain triaxial Body Accelerometer - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAcc_std_Z
  - 18
  - Mean of standard deviation frequency domain triaxial Body Accelerometer - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerk_mean_X
  - 18
  - Mean of mean frequency domain triaxial Body Accelerometer Jerk - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerk_mean_Y
  - 18
  - Mean of mean frequency domain triaxial Body Accelerometer Jerk - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerk_mean_Z
  - 18
  - Mean of mean frequency domain triaxial Body Accelerometer Jerk - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerk_std_X
  - 18
  - Mean of standard deviation frequency domain triaxial Body Accelerometer Jerk - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerk_std_Y
  - 18
  - Mean of standard deviation frequency domain triaxial Body Accelerometer Jerk - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerk_std_Z
  - 18
  - Mean of standard deviation frequency domain triaxial Body Accelerometer Jerk - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyro_mean_X
  - 18
  - Mean of mean frequency domain triaxial Body Gyroscope - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyro_mean_Y
  - 18
  - Mean of mean frequency domain triaxial Body Gyroscope - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyro_mean_Z
  - 18
  - Mean of mean frequency domain triaxial Body Gyroscope - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyro_std_X
  - 18
  - Mean of standard deviation frequency domain triaxial Body Gyroscope - X-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyro_std_Y
  - 18
  - Mean of standard deviation frequency domain triaxial Body Gyroscope - Y-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyro_std_Z
  - 18
  - Mean of standard deviation frequency domain triaxial Body Gyroscope - Z-axis
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccMag_mean
  - 18
  - Mean of mean frequency domain Body Accelerometer Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccMag_std
  - 18
  - Mean of standard deviation frequency domain Body Accelerometer Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerkMag_mean
  - 18
  - Mean of mean frequency domain Body Accelerometer Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyAccJerkMag_std
  - 18
  - Mean of standard deviation frequency domain Body Accelerometer Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyroMag_mean
  - 18
  - Mean of mean frequency domain Body Gyroscope Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyroMag_std
  - 18
  - Mean of standard deviation frequency domain Body Gyroscope Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyroJerkMag_mean
  - 18
  - Mean of mean frequency domain Body Gyroscope Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
- freq_BodyGyroJerkMag_std
  - 18
  - Mean of standard deviation frequency domain Body Gyroscope Jerk Magnitude
  - -1.000000000000000 to 1.0000000000000000
		
 ++++++++++++++++ END +++++++++++++++
