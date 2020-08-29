#Code Book
This is the code book for the TidyData set created when the run_analysis_R script is run

#Data Set Variables
##Generated fields
SubjectID (integer) - ID of subject performing the activity. Ranges from 1-30 (integer)

Activity (factor)- Activity the subject is performing. 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

##Measurement variables
Each variable is the mean value of all measurements recorded for that variable for each subject and activity.

 [1] "TimeBodyAccelerometerelerometerMean()-X"                           "TimeBodyAccelerometerelerometerMean()-Y"                          
 [3] "TimeBodyAccelerometerelerometerMean()-Z"                           "TimeBodyAccelerometerelerometerSTD()-X"                           
 [5] "TimeBodyAccelerometerelerometerSTD()-Y"                            "TimeBodyAccelerometerelerometerSTD()-Z"                           
 [7] "TimeGravityAccelerometerelerometerMean()-X"                        "TimeGravityAccelerometerelerometerMean()-Y"                       
 [9] "TimeGravityAccelerometerelerometerMean()-Z"                        "TimeGravityAccelerometerelerometerSTD()-X"                        
[11] "TimeGravityAccelerometerelerometerSTD()-Y"                         "TimeGravityAccelerometerelerometerSTD()-Z"                        
[13] "TimeBodyAccelerometerelerometerJerkMean()-X"                       "TimeBodyAccelerometerelerometerJerkMean()-Y"                      
[15] "TimeBodyAccelerometerelerometerJerkMean()-Z"                       "TimeBodyAccelerometerelerometerJerkSTD()-X"                       
[17] "TimeBodyAccelerometerelerometerJerkSTD()-Y"                        "TimeBodyAccelerometerelerometerJerkSTD()-Z"                       
[19] "TimeBodyGyroscopescopeMean()-X"                                    "TimeBodyGyroscopescopeMean()-Y"                                   
[21] "TimeBodyGyroscopescopeMean()-Z"                                    "TimeBodyGyroscopescopeSTD()-X"                                    
[23] "TimeBodyGyroscopescopeSTD()-Y"                                     "TimeBodyGyroscopescopeSTD()-Z"                                    
[25] "TimeBodyGyroscopescopeJerkMean()-X"                                "TimeBodyGyroscopescopeJerkMean()-Y"                               
[27] "TimeBodyGyroscopescopeJerkMean()-Z"                                "TimeBodyGyroscopescopeJerkSTD()-X"                                
[29] "TimeBodyGyroscopescopeJerkSTD()-Y"                                 "TimeBodyGyroscopescopeJerkSTD()-Z"                                
[31] "TimeBodyAccelerometerelerometerMagnitudenitudeMean()"              "TimeBodyAccelerometerelerometerMagnitudenitudeSTD()"              
[33] "TimeGravityAccelerometerelerometerMagnitudenitudeMean()"           "TimeGravityAccelerometerelerometerMagnitudenitudeSTD()"           
[35] "TimeBodyAccelerometerelerometerJerkMagnitudenitudeMean()"          "TimeBodyAccelerometerelerometerJerkMagnitudenitudeSTD()"          
[37] "TimeBodyGyroscopescopeMagnitudenitudeMean()"                       "TimeBodyGyroscopescopeMagnitudenitudeSTD()"                       
[39] "TimeBodyGyroscopescopeJerkMagnitudenitudeMean()"                   "TimeBodyGyroscopescopeJerkMagnitudenitudeSTD()"                   
[41] "FrequencyBodyAccelerometerelerometerMean()-X"                      "FrequencyBodyAccelerometerelerometerMean()-Y"                     
[43] "FrequencyBodyAccelerometerelerometerMean()-Z"                      "FrequencyBodyAccelerometerelerometerSTD()-X"                      
[45] "FrequencyBodyAccelerometerelerometerSTD()-Y"                       "FrequencyBodyAccelerometerelerometerSTD()-Z"                      
[47] "FrequencyBodyAccelerometerelerometerMeanFreq()-X"                  "FrequencyBodyAccelerometerelerometerMeanFreq()-Y"                 
[49] "FrequencyBodyAccelerometerelerometerMeanFreq()-Z"                  "FrequencyBodyAccelerometerelerometerJerkMean()-X"                 
[51] "FrequencyBodyAccelerometerelerometerJerkMean()-Y"                  "FrequencyBodyAccelerometerelerometerJerkMean()-Z"                 
[53] "FrequencyBodyAccelerometerelerometerJerkSTD()-X"                   "FrequencyBodyAccelerometerelerometerJerkSTD()-Y"                  
[55] "FrequencyBodyAccelerometerelerometerJerkSTD()-Z"                   "FrequencyBodyAccelerometerelerometerJerkMeanFreq()-X"             
[57] "FrequencyBodyAccelerometerelerometerJerkMeanFreq()-Y"              "FrequencyBodyAccelerometerelerometerJerkMeanFreq()-Z"             
[59] "FrequencyBodyGyroscopescopeMean()-X"                               "FrequencyBodyGyroscopescopeMean()-Y"                              
[61] "FrequencyBodyGyroscopescopeMean()-Z"                               "FrequencyBodyGyroscopescopeSTD()-X"                               
[63] "FrequencyBodyGyroscopescopeSTD()-Y"                                "FrequencyBodyGyroscopescopeSTD()-Z"                               
[65] "FrequencyBodyGyroscopescopeMeanFreq()-X"                           "FrequencyBodyGyroscopescopeMeanFreq()-Y"                          
[67] "FrequencyBodyGyroscopescopeMeanFreq()-Z"                           "FrequencyBodyAccelerometerelerometerMagnitudenitudeMean()"        
[69] "FrequencyBodyAccelerometerelerometerMagnitudenitudeSTD()"          "FrequencyBodyAccelerometerelerometerMagnitudenitudeMeanFreq()"    
[71] "FrequencyBodyAccelerometerelerometerJerkMagnitudenitudeMean()"     "FrequencyBodyAccelerometerelerometerJerkMagnitudenitudeSTD()"     
[73] "FrequencyBodyAccelerometerelerometerJerkMagnitudenitudeMeanFreq()" "FrequencyBodyGyroscopescopeMagnitudenitudeMean()"                 
[75] "FrequencyBodyGyroscopescopeMagnitudenitudeSTD()"                   "FrequencyBodyGyroscopescopeMagnitudenitudeMeanFreq()"             
[77] "FrequencyBodyGyroscopescopeJerkMagnitudenitudeMean()"              "FrequencyBodyGyroscopescopeJerkMagnitudenitudeSTD()"              
[79] "FrequencyBodyGyroscopescopeJerkMagnitudenitudeMeanFreq()"          "Angle(TimeBodyAccelerometerelerometerMean,Gravity)"               
[81] "Angle(TimeBodyAccelerometerelerometerJerkMean),GravityMean)"       "Angle(TimeBodyGyroscopescopeMean,GravityMean)"                    
[83] "Angle(TimeBodyGyroscopescopeJerkMean,GravityMean)"                 "Angle(X,GravityMean)"                                             
[85] "Angle(Y,GravityMean)"                                              "Angle(Z,GravityMean)"                                             
[87] "Activity"                                                          "Subject" 