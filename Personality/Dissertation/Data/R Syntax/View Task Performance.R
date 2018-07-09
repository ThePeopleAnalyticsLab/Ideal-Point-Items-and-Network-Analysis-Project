#View Task Performance Data
setwd("~/Documents/Research Projects/Personality/Dissertation/Data")
data <- read.csv("/Users/ccasti02/Documents/Research Projects/Personality/Dissertation/Data/TaskPerformance.csv")

#Items
#1. Complete duties as they are assigned.
#2. Complete tasks as they are specified in my job description.
#3. Take the time to learn the skills that are needed in order to do my work.
#4. Follow organizational rules and procedures.
#5. Avoid distractions that draw attention away from my tasks or duties.
#6. I often find myself distracted from my duties.
#7. Sometimes I focus too much on specific or formal duties.

#Recode items 6 and 7 to numbers.
data[,3] <- ifelse(data[,3] == "Never", 1, 
            ifelse(data[,3] == "Once a Year", 2, 
            ifelse(data[,3] == "Twice a Year", 3, 
            ifelse(data[,3] == "Several Times a Year", 4, 
            ifelse(data[,3] == "Monthly", 5, 
            ifelse(data[,3] == "Weekly", 6, 
            ifelse(data[,3] == "Daily", 7, NA)))))))

data[,8] <- ifelse(data[,8] == "Never", 1, 
            ifelse(data[,8] == "Once a Year", 2, 
            ifelse(data[,8] == "Twice a Year", 3, 
            ifelse(data[,8] == "Several Times a Year", 4, 
            ifelse(data[,8] == "Monthly", 5, 
            ifelse(data[,8] == "Weekly", 6, 
            ifelse(data[,8] == "Daily", 7, NA)))))))

#Recode items 1 to 5 with -9 to NA.
data$TASK_1[data$TASK_1==-9] <- NA
data$TASK_2[data$TASK_2==-9] <- NA
data$TASK_3[data$TASK_3==-9] <- NA
data$TASK_4[data$TASK_4==-9] <- NA
data$TASK_5[data$TASK_5==-9] <- NA

#See number of missing cases.
summary(data) #should be 760 to 779.
#Remove only those cases with completely missing data. Essentially this is pairwise deletion.
PWdata <- data[!rowSums(is.na(data[ , 2:8])) == 7, ]
View(PWdata)  #Should see 733 to 757 entries.

##OPTIONAL CODE##
#Recode items 1 to 5 with labels. May not be necessary.
data$TASK_1[data$TASK_1==1] <- "Never"
data$TASK_1[data$TASK_1==2] <- "Once a Year"
data$TASK_1[data$TASK_1==3] <- "Twice a Year"
data$TASK_1[data$TASK_1==4] <- "Several Times a Year"
data$TASK_1[data$TASK_1==5] <- "Monthly"
data$TASK_1[data$TASK_1==6] <- "Weekly"
data$TASK_1[data$TASK_1==7] <- "Daily"
data$TASK_2[data$TASK_2==1] <- "Never"
data$TASK_2[data$TASK_2==2] <- "Once a Year"
data$TASK_2[data$TASK_2==3] <- "Twice a Year"
data$TASK_2[data$TASK_2==4] <- "Several Times a Year"
data$TASK_2[data$TASK_2==5] <- "Monthly"
data$TASK_2[data$TASK_2==6] <- "Weekly"
data$TASK_2[data$TASK_2==7] <- "Daily"
data$TASK_3[data$TASK_3==1] <- "Never"
data$TASK_3[data$TASK_3==2] <- "Once a Year"
data$TASK_3[data$TASK_3==3] <- "Twice a Year"
data$TASK_3[data$TASK_3==4] <- "Several Times a Year"
data$TASK_3[data$TASK_3==5] <- "Monthly"
data$TASK_3[data$TASK_3==6] <- "Weekly"
data$TASK_3[data$TASK_3==7] <- "Daily"
data$TASK_4[data$TASK_4==1] <- "Never"
data$TASK_4[data$TASK_4==2] <- "Once a Year"
data$TASK_4[data$TASK_4==3] <- "Twice a Year"
data$TASK_4[data$TASK_4==4] <- "Several Times a Year"
data$TASK_4[data$TASK_4==5] <- "Monthly"
data$TASK_4[data$TASK_4==6] <- "Weekly"
data$TASK_4[data$TASK_4==7] <- "Daily"
data$TASK_5[data$TASK_5==1] <- "Never"
data$TASK_5[data$TASK_5==2] <- "Once a Year"
data$TASK_5[data$TASK_5==3] <- "Twice a Year"
data$TASK_5[data$TASK_5==4] <- "Several Times a Year"
data$TASK_5[data$TASK_5==5] <- "Monthly"
data$TASK_5[data$TASK_5==6] <- "Weekly"
data$TASK_5[data$TASK_5==7] <- "Daily"
