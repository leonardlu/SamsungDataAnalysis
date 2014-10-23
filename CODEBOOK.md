CodeBook
===========

run_analysis.R produces a tidy data set consisting of the 81 columns below:

1. `subject`: identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

2. `activity`: factor variable representing activity that subject is carrying out. LEVELS = WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 

The remaining 79 columns represent the means and standard deviation of the features measured, each obtained by calculating variables from the time and frequency domain that come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

 3. Time.BodyAcceleration.mean().X                       
 4. Time.BodyAcceleration.mean().Y                       
 5. Time.BodyAcceleration.mean().Z                       
 6. Time.GravityAcceleration.mean().X                    
 7. Time.GravityAcceleration.mean().Y                    
 8. Time.GravityAcceleration.mean().Z                    
 9. Time.BodyAccelerationJerk.mean().X                   
10. Time.BodyAccelerationJerk.mean().Y                   
11. Time.BodyAccelerationJerk.mean().Z                   
12. Time.BodyGyro.mean().X                               
13. Time.BodyGyro.mean().Y                               
14. Time.BodyGyro.mean().Z                               
15. Time.BodyGyroJerk.mean().X                           
16. Time.BodyGyroJerk.mean().Y                           
17. Time.BodyGyroJerk.mean().Z                           
18. Time.BodyAccelerationMag.mean()                      
19. Time.GravityAccelerationMag.mean()                   
20. Time.BodyAccelerationJerkMag.mean()                  
21. Time.BodyGyroMag.mean()                              
22. Time.BodyGyroJerkMag.mean()                          
23. Frequency.BodyAcceleration.mean().X                  
24. Frequency.BodyAcceleration.mean().Y                  
25. Frequency.BodyAcceleration.mean().Z                  
26. Frequency.BodyAcceleration.meanFrequency().X         
27. Frequency.BodyAcceleration.meanFrequency().Y         
28. Frequency.BodyAcceleration.meanFrequency().Z         
29. Frequency.BodyAccelerationJerk.mean().X              
30. Frequency.BodyAccelerationJerk.mean().Y              
31. Frequency.BodyAccelerationJerk.mean().Z              
32. Frequency.BodyAccelerationJerk.meanFrequency().X     
33. Frequency.BodyAccelerationJerk.meanFrequency().Y     
34. Frequency.BodyAccelerationJerk.meanFrequency().Z     
35. Frequency.BodyGyro.mean().X                          
36. Frequency.BodyGyro.mean().Y                          
37. Frequency.BodyGyro.mean().Z                          
38. Frequency.BodyGyro.meanFrequency().X                 
39. Frequency.BodyGyro.meanFrequency().Y                 
40. Frequency.BodyGyro.meanFrequency().Z                 
41. Frequency.BodyAccelerationMag.mean()                 
42. Frequency.BodyAccelerationMag.meanFrequency()        
43. Frequency.BodyBodyAccelerationJerkMag.mean()         
44. Frequency.BodyBodyAccelerationJerkMag.meanFrequency()
45. Frequency.BodyBodyGyroMag.mean()                     
46. Frequency.BodyBodyGyroMag.meanFrequency()            
47. Frequency.BodyBodyGyroJerkMag.mean()                 
48. Frequency.BodyBodyGyroJerkMag.meanFrequency()        
49. angle(Time.BodyAccelerationMean,gravity)             
50. angle(Time.BodyAccelerationJerkMean),gravityMean)    
51. angle(Time.BodyGyroMean,gravityMean)                 
52. angle(Time.BodyGyroJerkMean,gravityMean)             
53. angle(X,gravityMean)                                 
54. angle(Y,gravityMean)                                 
55. angle(Z,gravityMean)                                 
56. Time.BodyAcceleration.std.deviation().X              
57. Time.BodyAcceleration.std.deviation().Y              
58. Time.BodyAcceleration.std.deviation().Z              
59. Time.GravityAcceleration.std.deviation().X           
60. Time.GravityAcceleration.std.deviation().Y           
61. Time.GravityAcceleration.std.deviation().Z           
62. Time.BodyAccelerationJerk.std.deviation().X          
63. Time.BodyAccelerationJerk.std.deviation().Y          
64. Time.BodyAccelerationJerk.std.deviation().Z          
65. Time.BodyGyro.std.deviation().X                      
66. Time.BodyGyro.std.deviation().Y                      
67. Time.BodyGyro.std.deviation().Z                      
68. Time.BodyGyroJerk.std.deviation().X                  
69. Time.BodyGyroJerk.std.deviation().Y                  
70. Time.BodyGyroJerk.std.deviation().Z                  
71. Time.BodyAccelerationMag.std.deviation()             
72. Time.GravityAccelerationMag.std.deviation()          
73. Time.BodyAccelerationJerkMag.std.deviation()         
74. Time.BodyGyroMag.std.deviation()                     
75. Time.BodyGyroJerkMag.std.deviation()                 
76. Frequency.BodyAcceleration.std.deviation().X         
77. Frequency.BodyAcceleration.std.deviation().Y         
78. Frequency.BodyAcceleration.std.deviation().Z         
79. Frequency.BodyAccelerationJerk.std.deviation().X     
80. Frequency.BodyAccelerationJerk.std.deviation().Y     
81. Frequency.BodyAccelerationJerk.std.deviation().Z     
82. Frequency.BodyGyro.std.deviation().X                 
83. Frequency.BodyGyro.std.deviation().Y                 
84. Frequency.BodyGyro.std.deviation().Z                 
85. Frequency.BodyAccelerationMag.std.deviation()        
86. Frequency.BodyBodyAccelerationJerkMag.std.deviation()
87. Frequency.BodyBodyGyroMag.std.deviation()            
88. Frequency.BodyBodyGyroJerkMag.std.deviation()
