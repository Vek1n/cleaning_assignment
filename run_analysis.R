#Reading tests  data

xtest <- read.table("cleaning/test/X_test.txt")
test_labels <- read.table("cleaning/test/y_test.txt")
subject_test <- read.table("cleaning/test/subject_test.txt")

#Reading train data

xtrain <- read.table("cleaning/train/X_train.txt")
train_labels <- read.table("cleaning/train/y_train.txt")
subject_train <- read.table("cleaning/train/subject_train.txt")

# Merging the X_test,subject_test and y_test with cbind()

data_test <- cbind(test_labels,subject_test,xtest)

# Merging the X_train, subject_train and y_train with cbind()

#STEP 1
data_train <- cbind(train_labels,subject_train,xtrain)

# Creating the vector of variable names

#STEP 4

features <- read.table("cleaning/features.txt")[,-1]
var_names <-c("activities","subjects",features) 

# Changing names of the variables

names(data_train) <- var_names
names(data_test) <- var_names

# Merging the two data frames with rbind

data <- rbind(data_test,data_train)

# Extracting the desired variables (the ones that contains mean() or std() in the name) 
# with tidyr,dplyr and stringr packages

#####################
library(dplyr)      #
library(stringr)    #
library(tidyr)      #
#####################

#STEP 2

data <- data %>% 
  # using regular expressions to find the desired names
  select(grep("mean\\(\\)|std\\(\\)|activities|subjects",names(data))) %>% 
  # gathering the measures
  gather(key=variables,value=measures,-(activities:subjects) )

#STEP 3 
data$activities <- as.character(data$activities) %>% 
  sub("1","walking",x = .) %>% 
  sub("2","walking_up",x = .) %>% 
  sub("3","walking_down",x = .) %>% 
  sub("4","sitting",x = .) %>% 
  sub("5","standing",x = .) %>% 
  sub("6","laying",x = .)

#The step 4 was made before the 2
# STEP 5
data <- group_by(data,variables,activities,subjects)
newdata <- summarize(data,avarege=mean(measures))









write.table(x = newdata,file="summarized_data.txt")











