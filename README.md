# ProgrammingAssignment4

The data is extracted as a subset from following dataset 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

All the mean and std variables were extracted ( all the variables which contain exact mentions of "mean" or "std" in their name with small letters)

In the original dataset there are training and test observations but in this project they are merged into one file. 

The file contains one observations per one person for one activity. 
This means that if there were more observations per (person,ativity) pair they were grouped together and for each variable the average value is shown.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
