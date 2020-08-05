The variable called `variables` uses the following encoding

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

And has one more parameter that tells us if the variable is a measure of the standard deviation (`std()`) or the mean (`mean()`)

The variable called `activities` indicates the action of the subjects while the data was collected

walking - the subject was only walking 
walking_up - the subject was walking upstairs
walking_down - the subject was walking downstairs
sitting - the subject was only sitting
standing - the subject was only standing
laying - the subject was only laying

The variable `subjects` indicates the subject referred in the measures, and has values from 1 through 30

The variable `avarage` indicates the avarage of a determined row, where each row is a combination of the `variables`,`activities` and `subjects`
