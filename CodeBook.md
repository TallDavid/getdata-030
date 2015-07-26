CodeBook for Course Project of Getting and Cleaning Data - Coursera Course: getdata-030

Raw Data

The raw data for this project is accelerometer data collected from a group of 30 volunteers wearing a Samsung Galaxy S smartphone.  Raw data and data descriptions were provided via the following links:

    Data file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    CodeBook: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data includes pre-processed sensor data, "Inertial Signals" and "features" time and frequency domain data acceleration & velocity values derived from accelerometer and gyroscope measurements. For the purpose of this project, the "Inertial Signals" data is out-of-scope and will not be considered.

There are 3 types of files:

    X: Mutliple observations 561 separate of feature variables
    y: One of 6 activity types corresponding to each observation in X. Encoded as numbers.
    Subject: One of 30 subjects participating in the study.  A value of subject corresponds to each 
        observation in X was measured. Encoded as numbers.


Data loading

    Training and Test datasets are provided.  For the purposes of this analysis, there is no need to separate
    these datasets and so they are combined.  In, addition, the three types of data are combined and are
    combined with the variable labels provided in the features.txt file.

Data Transformation

    To improve readabilty, the numeric codes for "Activity" are replaced with activity labels provided in 
    the activity_labels.txt file.

    Once the data and labels are combind, the dataset is converted into a local data frame for analysis.  

The full dataset is output as: smartphone.csv

    Unneeded variables are dropped, summary statistics are calculated and the requested output dataset
    is produced.
    
    
This final output dataset: smartphoneFinal.csv

The code and further inline documentation is present in the R code file: run_analysis.R.

References:
	Codebook template: http://rstudio-pubs-static.s3.amazonaws.com/15835_435e9fc505054c7db524e86a6cb51e4a.html
	David's project FAQ: https://class.coursera.org/getdata-030/forum/thread?thread_id=37 
