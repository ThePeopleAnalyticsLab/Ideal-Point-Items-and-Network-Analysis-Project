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
data[,7] <- ifelse(data[,7] == "Never", 1, 
                   ifelse(data[,7] == "Once a Year", 2, 
                          ifelse(data[,7] == "Twice a Year", 3, 
                                 ifelse(data[,7] == "Several Times a Year", 4, 
                                        ifelse(data[,7] == "Monthly", 5, 
                                               ifelse(data[,7] == "Weekly", 6, 
                                                      ifelse(data[,7] == "Daily", 7, NA)))))))

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

#Subset data.
newdata <- PWdata[c(2:8)]
View(newdata)

#Confirmatory factor analysis. Note: the modified model is the best fitting model. Report these statistics.
library(lavaan)
TP.model <- ' TaskPerf =~ TASK_1 + TASK_2 + TASK_3 + TASK_4 + TASK_5 + TASK_6 + TASK_7'
fit <- cfa(TP.model, data=newdata)
summary(fit, fit.measures=TRUE)
##Model with items 6 and 7 removed.
TP.modelM <- ' TaskPerf =~ TASK_1 + TASK_2 + TASK_3 + TASK_4 + TASK_5'
fit <- cfa(TP.modelM, data=newdata)
summary(fit, fit.measures=TRUE)
library(semPlot)
semPaths(fit, title = FALSE, curvePivot = TRUE)

#GRM.
library(psych)
describe(newdata[c(1,2,3,4,5)])                      # means and SDs for data file with 12 ratings
cor(newdata[c(1,2,3,4,5)])                           # correlation matrix
scree(newdata[c(1,2,3,4,5)], factors=FALSE)          # scree plot
omega(newdata[c(1,2,3,4,5)])                         # runs bifactor model

library(ltm) #When items 6 and 7 are omitted, this is the superior model.
descript(newdata[c(1,2,3,4,5)])                      # runs frequency tables for every item
fit<-grm(newdata[c(1,2,3,4,5)])                      # graded response model
fit                                    # print cutpoints and discrimination

plot(fit)                              # plots item category characteristic curves
plot(fit, type="IIC")                  # plots item information curves

#Consider using an imputation method for addressing the missing data problem, which will also allow you to get other fit statistics (see R Williamson's files).