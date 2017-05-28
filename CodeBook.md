==================================================================
## Human Activity Recognition Using Smartphones Dataset
#### Version 1.0
==================================================================
#### Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
#### Smartlab - Non Linear Complex Systems Laboratory
#### DITEN - Università degli Studi di Genova.
#### Via Opera Pia 11A, I-16145, Genoa, Italy.
#### activityrecognition@smartlab.ws
#### www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

## Transformations:
### Following transformations have been applied to the original dataset:
* Read and combine the training and test datasets
* Extract measurements on mean and standard deviations only
* Tidy variable names by removing (,) and - from the names
* Use descriptive activity names by merging with activity dataset
* Calculate average for each subject and activity
* Write final output to "tidyData.txt"

### Final tidy data consists the average values for following headers for each activity and subject:
             activityname    subject     tBodyAccmeanX    tBodyAccmeanY      
 LAYING            :30    Min.   : 1.0   Min.   :0.2216   Min.   :-0.040514  
 SITTING           :30    1st Qu.: 8.0   1st Qu.:0.2712   1st Qu.:-0.020022  
 STANDING          :30    Median :15.5   Median :0.2770   Median :-0.017262  
 WALKING           :30    Mean   :15.5   Mean   :0.2743   Mean   :-0.017876  
 WALKING_DOWNSTAIRS:30    3rd Qu.:23.0   3rd Qu.:0.2800   3rd Qu.:-0.014936  
 WALKING_UPSTAIRS  :30    Max.   :30.0   Max.   :0.3015   Max.   :-0.001308  

 tBodyAccmeanZ       tBodyAccstdX      tBodyAccstdY       tBodyAccstdZ    
 Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877  
 1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498  
 Median :-0.10819   Median :-0.7526   Median :-0.50897   Median :-0.6518  
 Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756  
 3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306  
 Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090 

 tGravityAccmeanX  tGravityAccmeanY   tGravityAccmeanZ   tGravityAccstdX  
 Min.   :-0.6800   Min.   :-0.47989   Min.   :-0.49509   Min.   :-0.9968  
 1st Qu.: 0.8376   1st Qu.:-0.23319   1st Qu.:-0.11726   1st Qu.:-0.9825  
 Median : 0.9208   Median :-0.12782   Median : 0.02384   Median :-0.9695  
 Mean   : 0.6975   Mean   :-0.01621   Mean   : 0.07413   Mean   :-0.9638  
 3rd Qu.: 0.9425   3rd Qu.: 0.08773   3rd Qu.: 0.14946   3rd Qu.:-0.9509  
 Max.   : 0.9745   Max.   : 0.95659   Max.   : 0.95787   Max.   :-0.8296  

 tGravityAccstdY   tGravityAccstdZ   tBodyAccJerkmeanX tBodyAccJerkmeanY   
 Min.   :-0.9942   Min.   :-0.9910   Min.   :0.04269   Min.   :-0.0386872  
 1st Qu.:-0.9711   1st Qu.:-0.9605   1st Qu.:0.07396   1st Qu.: 0.0004664  
 Median :-0.9590   Median :-0.9450   Median :0.07640   Median : 0.0094698  
 Mean   :-0.9524   Mean   :-0.9364   Mean   :0.07947   Mean   : 0.0075652  
 3rd Qu.:-0.9370   3rd Qu.:-0.9180   3rd Qu.:0.08330   3rd Qu.: 0.0134008  
 Max.   :-0.6436   Max.   :-0.6102   Max.   :0.13019   Max.   : 0.0568186  

 tBodyAccJerkmeanZ   tBodyAccJerkstdX  tBodyAccJerkstdY  tBodyAccJerkstdZ  
 Min.   :-0.067458   Min.   :-0.9946   Min.   :-0.9895   Min.   :-0.99329  
 1st Qu.:-0.010601   1st Qu.:-0.9832   1st Qu.:-0.9724   1st Qu.:-0.98266  
 Median :-0.003861   Median :-0.8104   Median :-0.7756   Median :-0.88366  
 Mean   :-0.004953   Mean   :-0.5949   Mean   :-0.5654   Mean   :-0.73596  
 3rd Qu.: 0.001958   3rd Qu.:-0.2233   3rd Qu.:-0.1483   3rd Qu.:-0.51212  
 Max.   : 0.038053   Max.   : 0.5443   Max.   : 0.3553   Max.   : 0.03102  

 tBodyGyromeanX     tBodyGyromeanY     tBodyGyromeanZ     tBodyGyrostdX    
 Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.9943  
 1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.9735  
 Median :-0.02871   Median :-0.07318   Median : 0.08512   Median :-0.7890  
 Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.6916  
 3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.4414  
 Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910   Max.   : 0.2677 

 tBodyGyrostdY     tBodyGyrostdZ     tBodyGyroJerkmeanX tBodyGyroJerkmeanY
 Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721   Min.   :-0.07681  
 1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322   1st Qu.:-0.04552  
 Median :-0.8017   Median :-0.8010   Median :-0.09868   Median :-0.04112  
 Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606   Mean   :-0.04269  
 3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110   3rd Qu.:-0.03842  
 Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209   Max.   :-0.01320 

 tBodyGyroJerkmeanZ  tBodyGyroJerkstdX tBodyGyroJerkstdY tBodyGyroJerkstdZ
 Min.   :-0.092500   Min.   :-0.9965   Min.   :-0.9971   Min.   :-0.9954  
 1st Qu.:-0.061725   1st Qu.:-0.9800   1st Qu.:-0.9832   1st Qu.:-0.9848  
 Median :-0.053430   Median :-0.8396   Median :-0.8942   Median :-0.8610  
 Mean   :-0.054802   Mean   :-0.7036   Mean   :-0.7636   Mean   :-0.7096  
 3rd Qu.:-0.048985   3rd Qu.:-0.4629   3rd Qu.:-0.5861   3rd Qu.:-0.4741  
 Max.   :-0.006941   Max.   : 0.1791   Max.   : 0.2959   Max.   : 0.1932 

 tBodyAccMagmean   tBodyAccMagstd    tGravityAccMagmean tGravityAccMagstd
 Min.   :-0.9865   Min.   :-0.9865   Min.   :-0.9865    Min.   :-0.9865  
 1st Qu.:-0.9573   1st Qu.:-0.9430   1st Qu.:-0.9573    1st Qu.:-0.9430  
 Median :-0.4829   Median :-0.6074   Median :-0.4829    Median :-0.6074  
 Mean   :-0.4973   Mean   :-0.5439   Mean   :-0.4973    Mean   :-0.5439  
 3rd Qu.:-0.0919   3rd Qu.:-0.2090   3rd Qu.:-0.0919    3rd Qu.:-0.2090  
 Max.   : 0.6446   Max.   : 0.4284   Max.   : 0.6446    Max.   : 0.4284 

 tBodyAccJerkMagmean tBodyAccJerkMagstd tBodyGyroMagmean  tBodyGyroMagstd  
 Min.   :-0.9928     Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9814  
 1st Qu.:-0.9807     1st Qu.:-0.9765    1st Qu.:-0.9461   1st Qu.:-0.9476  
 Median :-0.8168     Median :-0.8014    Median :-0.6551   Median :-0.7420  
 Mean   :-0.6079     Mean   :-0.5842    Mean   :-0.5652   Mean   :-0.6304  
 3rd Qu.:-0.2456     3rd Qu.:-0.2173    3rd Qu.:-0.2159   3rd Qu.:-0.3602  
 Max.   : 0.4345     Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.3000  

 tBodyGyroJerkMagmean tBodyGyroJerkMagstd fBodyAccmeanX     fBodyAccmeanY     
 Min.   :-0.99732     Min.   :-0.9977     Min.   :-0.9952   Min.   :-0.98903  
 1st Qu.:-0.98515     1st Qu.:-0.9805     1st Qu.:-0.9787   1st Qu.:-0.95361  
 Median :-0.86479     Median :-0.8809     Median :-0.7691   Median :-0.59498  
 Mean   :-0.73637     Mean   :-0.7550     Mean   :-0.5758   Mean   :-0.48873  
 3rd Qu.:-0.51186     3rd Qu.:-0.5767     3rd Qu.:-0.2174   3rd Qu.:-0.06341  
 Max.   : 0.08758     Max.   : 0.2502     Max.   : 0.5370   Max.   : 0.52419  

 fBodyAccmeanZ      fBodyAccstdX      fBodyAccstdY       fBodyAccstdZ    
 Min.   :-0.9895   Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872  
 1st Qu.:-0.9619   1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459  
 Median :-0.7236   Median :-0.7470   Median :-0.51338   Median :-0.6441  
 Mean   :-0.6297   Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824  
 3rd Qu.:-0.3183   3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655  
 Max.   : 0.2807   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871  

 fBodyAccmeanFreqX  fBodyAccmeanFreqY   fBodyAccmeanFreqZ  fBodyAccJerkmeanX
 Min.   :-0.63591   Min.   :-0.379518   Min.   :-0.52011   Min.   :-0.9946  
 1st Qu.:-0.39165   1st Qu.:-0.081314   1st Qu.:-0.03629   1st Qu.:-0.9828  
 Median :-0.25731   Median : 0.007855   Median : 0.06582   Median :-0.8126  
 Mean   :-0.23227   Mean   : 0.011529   Mean   : 0.04372   Mean   :-0.6139  
 3rd Qu.:-0.06105   3rd Qu.: 0.086281   3rd Qu.: 0.17542   3rd Qu.:-0.2820  
 Max.   : 0.15912   Max.   : 0.466528   Max.   : 0.40253   Max.   : 0.4743  

 fBodyAccJerkmeanY fBodyAccJerkmeanZ fBodyAccJerkstdX  fBodyAccJerkstdY 
 Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.9951   Min.   :-0.9905  
 1st Qu.:-0.9725   1st Qu.:-0.9796   1st Qu.:-0.9847   1st Qu.:-0.9737  
 Median :-0.7817   Median :-0.8707   Median :-0.8254   Median :-0.7852  
 Mean   :-0.5882   Mean   :-0.7144   Mean   :-0.6121   Mean   :-0.5707  
 3rd Qu.:-0.1963   3rd Qu.:-0.4697   3rd Qu.:-0.2475   3rd Qu.:-0.1685  
 Max.   : 0.2767   Max.   : 0.1578   Max.   : 0.4768   Max.   : 0.3498  

 fBodyAccJerkstdZ    fBodyAccJerkmeanFreqX fBodyAccJerkmeanFreqY fBodyAccJerkmeanFreqZ
 Min.   :-0.993108   Min.   :-0.57604      Min.   :-0.60197      Min.   :-0.62756     
 1st Qu.:-0.983747   1st Qu.:-0.28966      1st Qu.:-0.39751      1st Qu.:-0.30867     
 Median :-0.895121   Median :-0.06091      Median :-0.23209      Median :-0.09187     
 Mean   :-0.756489   Mean   :-0.06910      Mean   :-0.22810      Mean   :-0.13760     
 3rd Qu.:-0.543787   3rd Qu.: 0.17660      3rd Qu.:-0.04721      3rd Qu.: 0.03858     
 Max.   :-0.006236   Max.   : 0.33145      Max.   : 0.19568      Max.   : 0.23011   

 fBodyGyromeanX    fBodyGyromeanY    fBodyGyromeanZ    fBodyGyrostdX     fBodyGyrostdY    
 Min.   :-0.9931   Min.   :-0.9940   Min.   :-0.9860   Min.   :-0.9947   Min.   :-0.9944  
 1st Qu.:-0.9697   1st Qu.:-0.9700   1st Qu.:-0.9624   1st Qu.:-0.9750   1st Qu.:-0.9602  
 Median :-0.7300   Median :-0.8141   Median :-0.7909   Median :-0.8086   Median :-0.7964  
 Mean   :-0.6367   Mean   :-0.6767   Mean   :-0.6044   Mean   :-0.7110   Mean   :-0.6454  
 3rd Qu.:-0.3387   3rd Qu.:-0.4458   3rd Qu.:-0.2635   3rd Qu.:-0.4813   3rd Qu.:-0.4154  
 Max.   : 0.4750   Max.   : 0.3288   Max.   : 0.4924   Max.   : 0.1966   Max.   : 0.6462  

 fBodyGyrostdZ     fBodyGyromeanFreqX  fBodyGyromeanFreqY fBodyGyromeanFreqZ
 Min.   :-0.9867   Min.   :-0.395770   Min.   :-0.66681   Min.   :-0.50749  
 1st Qu.:-0.9643   1st Qu.:-0.213363   1st Qu.:-0.29433   1st Qu.:-0.15481  
 Median :-0.8224   Median :-0.115527   Median :-0.15794   Median :-0.05081  
 Mean   :-0.6577   Mean   :-0.104551   Mean   :-0.16741   Mean   :-0.05718  
 3rd Qu.:-0.3916   3rd Qu.: 0.002655   3rd Qu.:-0.04269   3rd Qu.: 0.04152  
 Max.   : 0.5225   Max.   : 0.249209   Max.   : 0.27314   Max.   : 0.37707  

 fBodyAccMagmean   fBodyAccMagstd    fBodyAccMagmeanFreq fBodyBodyAccJerkMagmean
 Min.   :-0.9868   Min.   :-0.9876   Min.   :-0.31234    Min.   :-0.9940        
 1st Qu.:-0.9560   1st Qu.:-0.9452   1st Qu.:-0.01475    1st Qu.:-0.9770        
 Median :-0.6703   Median :-0.6513   Median : 0.08132    Median :-0.7940        
 Mean   :-0.5365   Mean   :-0.6210   Mean   : 0.07613    Mean   :-0.5756        
 3rd Qu.:-0.1622   3rd Qu.:-0.3654   3rd Qu.: 0.17436    3rd Qu.:-0.1872        
 Max.   : 0.5866   Max.   : 0.1787   Max.   : 0.43585    Max.   : 0.5384        

 fBodyBodyAccJerkMagstd fBodyBodyAccJerkMagmeanFreq fBodyBodyGyroMagmean
 Min.   :-0.9944        Min.   :-0.12521            Min.   :-0.9865     
 1st Qu.:-0.9752        1st Qu.: 0.04527            1st Qu.:-0.9616     
 Median :-0.8126        Median : 0.17198            Median :-0.7657     
 Mean   :-0.5992        Mean   : 0.16255            Mean   :-0.6671     
 3rd Qu.:-0.2668        3rd Qu.: 0.27593            3rd Qu.:-0.4087     
 Max.   : 0.3163        Max.   : 0.48809            Max.   : 0.2040     

 fBodyBodyGyroMagstd fBodyBodyGyroMagmeanFreq fBodyBodyGyroJerkMagmean
 Min.   :-0.9815     Min.   :-0.45664         Min.   :-0.9976         
 1st Qu.:-0.9488     1st Qu.:-0.16951         1st Qu.:-0.9813         
 Median :-0.7727     Median :-0.05352         Median :-0.8779         
 Mean   :-0.6723     Mean   :-0.03603         Mean   :-0.7564         
 3rd Qu.:-0.4277     3rd Qu.: 0.08228         3rd Qu.:-0.5831         
 Max.   : 0.2367     Max.   : 0.40952         Max.   : 0.1466         
 
 fBodyBodyGyroJerkMagstd fBodyBodyGyroJerkMagmeanFreq
 Min.   :-0.9976         Min.   :-0.18292            
 1st Qu.:-0.9802         1st Qu.: 0.05423            
 Median :-0.8941         Median : 0.11156            
 Mean   :-0.7715         Mean   : 0.12592            
 3rd Qu.:-0.6081         3rd Qu.: 0.20805            
 Max.   : 0.2878         Max.   : 0.42630 