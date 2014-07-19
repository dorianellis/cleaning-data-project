## Import the features.txt data which describes the columns in X_train and X_test
## the data has no headers and columns are separated by a space character
	features <- read.table("./training_analysis/features.txt", header=FALSE, sep=" ")
## We're only interested in columns describing mean and standard deviation values
## created a subset of those column names matching "mean()" and "std()"
	features2 <- features[grep("mean\\(\\)|std\\(\\)", features[,2]), ]

## Create a vector of those target column numbers
	colnos <- c(features2[,1])
## Create a vector of cleaner column names, remove brackets, keep core of label as CamelCase for readability, 
## replace dashes with underscores and prefix with "time" or "freq" instead of "t" or "f"
## also fix a lebelling error where "BodyBody" appears instead of "Body"
	colnames <- c(gsub("\\(\\)","",gsub("-","_",gsub("^[t]","time_",gsub("^[f]","freq_",gsub("BodyBody","Body",features2[,2]))))))

## Now get the activity type data so we can use it later in the clean data sets
	activitytypes <- read.table("./training_analysis/activity_labels.txt", header=FALSE, sep=" ", stringsAsFactors=FALSE)
	names(activitytypes) <- c("activity_code", "activity_label")


## Import the X_test.txt data, specifying only the target columns 
## the data has no headers and columns are separated by a space character
	xtest <- read.table("./training_analysis/test/X_test.txt", header=FALSE, colClasses="double")[,colnos]
## Import the y_test.txt activity data - single column no header
	ytest <- read.table("./training_analysis/test/y_test.txt", header=FALSE)
## And append the ytest to the xtest data frame - the rows in both data frames correspond so no 
## sorting or merging required at this stage
	ztest <- cbind(ytest,xtest)
## Import the subject_test.txt subject data - single column no header
	stest <- read.table("./training_analysis/test/subject_test.txt", header=FALSE)
## And append the stest to the ztest data frame - the rows in both data frames correspond so no 
## sorting or merging required at this stage
	fulltest <- cbind(stest,ztest)

## Append column names to the fulltest dataframe
	names(fulltest) <- c("subject_id", "activity_type", colnames)

## Import the X_train.txt data, specifying only the target columns 
## the data has no headers and columns are separated by a space character
	xtrain <- read.table("./training_analysis/train/X_train.txt", header=FALSE, colClasses="double")[,colnos]
## Import the y_train.txt activity data - single column no header
	ytrain <- read.table("./training_analysis/train/y_train.txt", header=FALSE)
## And append the to the xtrain data frame - the rows in both data frames correspond so no 
## sorting or merging required at this stage
	ztrain <- cbind(ytrain,xtrain)
## Import the subject_train.txt subject data - single column no header
	strain <- read.table("./training_analysis/train/subject_train.txt", header=FALSE)
## And append the strain to the ztest data frame - the rows in both data frames correspond so no 
## sorting or merging required at this stage
	fulltrain <- cbind(strain,ztrain)

## Append column names to the fulltest dataframe
	names(fulltrain) <- c("subject_id", "activity_type", colnames)


## Join the two data frames together
	dffull <- rbind(fulltest,fulltrain)
## And use the activitytype data frame to insert/overwrite the activity ids
	dffull$activity_type <- as.character(activitytypes[match(dffull$activity_type, activitytypes$activity_code), 'activity_label'])
## Convert to factors
	dffull$activity_type <- as.factor(dffull$activity_type)
## And do the same with the subject ids
	dffull$subject_id <- as.factor(dffull$subject_id)

## Load the data.table library so that we can use it to summarise the data
	require(data.table)
## And create a data.table object from our data frame
	dtfull <- as.data.table(dffull)

## Specify the column names we want to group the summary data by
	groupCols <- c("subject_id","activity_type")
## And use lapply to get means (.SD provides a subset of the data.table 
## excluding columns specified in the by parameter)
	dttidy <- dtfull[,lapply(.SD,mean),by=groupCols]

## Write out to a text file with column names but no row labels and a space separator
	write.table(dttidy,"./training_analysis/HAR_DATA.txt",sep=" ", row.names=FALSE, col.names=TRUE)
