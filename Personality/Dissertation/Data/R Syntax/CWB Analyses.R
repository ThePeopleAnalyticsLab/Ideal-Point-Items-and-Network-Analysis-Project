#View CWB.
setwd("~/Documents/Research Projects/Personality/Dissertation/Data")
data <- read.csv("/Users/ccasti02/Documents/Research Projects/Personality/Dissertation/Data/CWB.csv")
View(data)

#Items.
##Interpersonal Deviance.
#1. Made fun of someone at work.
#2. Said something hurtful to someone at work.
#3. Made an ethnic, religious, or racial remark at work.
#4. Cursed at someone at work.
#5. Played a mean prank on someone at work.
#6. Acted rudely toward someone at work.
#7. Publicly embarrassed someone at work.
##Organizational Deviance
#8. Taken property from work with permission.
#9. Spent too much time fantasizing or daydreaming instead of working.
#10. Falsified a receipt to get reimbursed for more money than you spent on business expenses.
#11. Taken an additional or longer break than is acceptable at your workplace.
#12. Come in late to work without permission.
#13. Littered your work environment.
#14. Neglected to follow your boss?s instructions.
#15. Intentionally worked slower than you could have worked.
#16. Discussed confidential company information with an unauthorized person.
#17. Used an illegal drug or consumed alcohol on the job.
#18. Put little effort in your work.
#19. Dragged out work in order to get overtime.
#20. Put yourself in danger by not following safety procedures.
#21. Come to work under the influence of alcohol.
#22. Had your performance affected due to a hangover from either drugs or alcohol.

#Subset data.
newdata <- data[c(2:23)]
View(newdata)

#Recode Data
newdata <- ifelse(newdata == "Never", 1, 
                    ifelse(newdata == "Once a Year", 2, 
                           ifelse(newdata == "Twice a Year", 3, 
                                  ifelse(newdata == "Several Times a Year", 4, 
                                         ifelse(newdata == "Monthly", 5, 
                                                ifelse(newdata == "Weekly", 6, 
                                                       ifelse(newdata == "Daily", 7, NA)))))))

#See number of missing cases.
summary(newdata)

#Remove only those cases with completely missing data. Essentially this is pairwise deletion.
PWdata <- newdata[!rowSums(is.na(newdata[ , 1:22])) == 22, ]
View(PWdata)  #Should see 787 entries.

library(lavaan)
CWB.model <- 'Int.Dev =~ CWB_1 + CWB_2 + CWB_3 + CWB_4 + CWB_5 + CWB_6 + CWB_7
              Org.Dev =~ CWB_8 + CWB_9 + CWB_10 +
                         CWB_11 + CWB_12 + CWB_13 + 
                         CWB_15 + CWB_16 + CWB_17 + 
                        CWB_18 + CWB_19 + CWB_20 + CWB_21'
fit <- cfa(CWB.model, data=newdata) 
summary(fit, fit.measures=TRUE)