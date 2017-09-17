run_analysis <- function(){
  
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/Y_test.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")

xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")


testData <- cbind(ytest,subjecttest,xtest)
trainData <- cbind(ytrain,subjecttrain,xtrain)

allData <- rbind(testData,trainData)

features <- read.table("UCI HAR Dataset/features.txt")

for(i in nrow(features):1){
  variableName <- features[i,2]
  if(length(grep("mean|std",variableName))==0){
    allData[,i+2] <- NULL
  }
  else{
    newName <- gsub("-",".",as.character(features[i,2]))
    newName <- gsub(",",".",newName)
    colnames(allData)[i+2] <- newName
  }
}

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
allData[,1] <- activityLabels[match(allData[,1],activityLabels[,1]),2]

colnames(allData)[1] <- "Activity"
colnames(allData)[2] <- "Subject"


tidyData <- allData %>% group_by(Activity,Subject) %>% summarize_all(mean)

write.table(tidyData,file="tidyData.txt")
  
tidyData  
}
