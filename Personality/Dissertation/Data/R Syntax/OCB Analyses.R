#View OCB.
setwd("~/Documents/Research Projects/Personality/Dissertation/Data")
data <- read.csv("/Users/ccasti02/Documents/Research Projects/Personality/Dissertation/Data/OCB.sav.csv")
View(data)

#Items.
#1. Picked up a meal for others at work.
#2. Took time to advise, coach, or mentor a coworker.
#3. Helped a co-worker learn new skills or shared job knowledge.
#4. Helped a new employee get oriented to the job.
#5. Lent a compassionate ear when someone had a work problem.
#6. Lent a compassionate ear when someone had a personal problem.
#7. Changed vacation schedule, work days, or shifts to accommodate coworker's needs.
#8. Offered suggestions to improve how work is done.
#9. Offered suggestions for improving the work environment.
#10. Finished something for a co-worker who had to leave early.
#11. Helped a less capable co-worker life a heavy box or other object.
#12. Helped a co-worker who had too much to do.
#13. Volunteered for extra work assignments.
#14. Took phone messages for an absent or busy co-worker.
#15. Said good things about your employer in front of others.
#16. Gave up a meal and other breaks to complete work.
#17. Volunteered to help a co-worker deal with a difficult customer, vendor, or co-worker.
#18. Went out of the way to give co-worker encouragement or express appreciation.
#19. Decorated, straightened up, or otherwise beautified a common work space.
#20. Defended a co-worker who was being 'put-down' or spoken ill of by other co-workers or supervisor.

data[,2] <- ifelse(data[,2] == "Never", 1, 
            ifelse(data[,2] == "Once a Year", 2, 
            ifelse(data[,2] == "Twice a Year", 3, 
            ifelse(data[,2] == "Several Times a Year", 4, 
            ifelse(data[,2] == "Monthly", 5, 
            ifelse(data[,2] == "Weekly", 6, 
            ifelse(data[,2] == "Daily", 7, NA)))))))

data[,3] <- ifelse(data[,3] == "Never", 1, 
                   ifelse(data[,3] == "Once a Year", 2, 
                          ifelse(data[,3] == "Twice a Year", 3, 
                                 ifelse(data[,3] == "Several Times a Year", 4, 
                                        ifelse(data[,3] == "Monthly", 5, 
                                               ifelse(data[,3] == "Weekly", 6, 
                                                      ifelse(data[,3] == "Daily", 7, NA)))))))

data[,4] <- ifelse(data[,4] == "Never", 1, 
                   ifelse(data[,4] == "Once a Year", 2, 
                          ifelse(data[,4] == "Twice a Year", 3, 
                                 ifelse(data[,4] == "Several Times a Year", 4, 
                                        ifelse(data[,4] == "Monthly", 5, 
                                               ifelse(data[,4] == "Weekly", 6, 
                                                      ifelse(data[,4] == "Daily", 7, NA)))))))

data[,5] <- ifelse(data[,5] == "Never", 1, 
                   ifelse(data[,5] == "Once a Year", 2, 
                          ifelse(data[,5] == "Twice a Year", 3, 
                                 ifelse(data[,5] == "Several Times a Year", 4, 
                                        ifelse(data[,5] == "Monthly", 5, 
                                               ifelse(data[,5] == "Weekly", 6, 
                                                      ifelse(data[,5] == "Daily", 7, NA)))))))

data[,6] <- ifelse(data[,6] == "Never", 1, 
                   ifelse(data[,6] == "Once a Year", 2, 
                          ifelse(data[,6] == "Twice a Year", 3, 
                                 ifelse(data[,6] == "Several Times a Year", 4, 
                                        ifelse(data[,6] == "Monthly", 5, 
                                               ifelse(data[,6] == "Weekly", 6, 
                                                      ifelse(data[,6] == "Daily", 7, NA)))))))
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
data[,9] <- ifelse(data[,9] == "Never", 1, 
                   ifelse(data[,9] == "Once a Year", 2, 
                          ifelse(data[,9] == "Twice a Year", 3, 
                                 ifelse(data[,9] == "Several Times a Year", 4, 
                                        ifelse(data[,9] == "Monthly", 5, 
                                               ifelse(data[,9] == "Weekly", 6, 
                                                      ifelse(data[,9] == "Daily", 7, NA)))))))
data[,10] <- ifelse(data[,10] == "Never", 1, 
                   ifelse(data[,10] == "Once a Year", 2, 
                          ifelse(data[,10] == "Twice a Year", 3, 
                                 ifelse(data[,10] == "Several Times a Year", 4, 
                                        ifelse(data[,10] == "Monthly", 5, 
                                               ifelse(data[,10] == "Weekly", 6, 
                                                      ifelse(data[,10] == "Daily", 7, NA)))))))
data[,11] <- ifelse(data[,11] == "Never", 1, 
                   ifelse(data[,11] == "Once a Year", 2, 
                          ifelse(data[,11] == "Twice a Year", 3, 
                                 ifelse(data[,11] == "Several Times a Year", 4, 
                                        ifelse(data[,11] == "Monthly", 5, 
                                               ifelse(data[,11] == "Weekly", 6, 
                                                      ifelse(data[,11] == "Daily", 7, NA)))))))
data[,12] <- ifelse(data[,12] == "Never", 1, 
                   ifelse(data[,12] == "Once a Year", 2, 
                          ifelse(data[,12] == "Twice a Year", 3, 
                                 ifelse(data[,12] == "Several Times a Year", 4, 
                                        ifelse(data[,12] == "Monthly", 5, 
                                               ifelse(data[,12] == "Weekly", 6, 
                                                      ifelse(data[,12] == "Daily", 7, NA)))))))
data[,13] <- ifelse(data[,13] == "Never", 1, 
                   ifelse(data[,13] == "Once a Year", 2, 
                          ifelse(data[,13] == "Twice a Year", 3, 
                                 ifelse(data[,13] == "Several Times a Year", 4, 
                                        ifelse(data[,13] == "Monthly", 5, 
                                               ifelse(data[,13] == "Weekly", 6, 
                                                      ifelse(data[,13] == "Daily", 7, NA)))))))
data[,14] <- ifelse(data[,14] == "Never", 1, 
                   ifelse(data[,14] == "Once a Year", 2, 
                          ifelse(data[,14] == "Twice a Year", 3, 
                                 ifelse(data[,14] == "Several Times a Year", 4, 
                                        ifelse(data[,14] == "Monthly", 5, 
                                               ifelse(data[,14] == "Weekly", 6, 
                                                      ifelse(data[,14] == "Daily", 7, NA)))))))
data[,15] <- ifelse(data[,15] == "Never", 1, 
                   ifelse(data[,15] == "Once a Year", 2, 
                          ifelse(data[,15] == "Twice a Year", 3, 
                                 ifelse(data[,15] == "Several Times a Year", 4, 
                                        ifelse(data[,15] == "Monthly", 5, 
                                               ifelse(data[,15] == "Weekly", 6, 
                                                      ifelse(data[,15] == "Daily", 7, NA)))))))
data[,16] <- ifelse(data[,16] == "Never", 1, 
                   ifelse(data[,16] == "Once a Year", 2, 
                          ifelse(data[,16] == "Twice a Year", 3, 
                                 ifelse(data[,16] == "Several Times a Year", 4, 
                                        ifelse(data[,16] == "Monthly", 5, 
                                               ifelse(data[,16] == "Weekly", 6, 
                                                      ifelse(data[,16] == "Daily", 7, NA)))))))
data[,17] <- ifelse(data[,17] == "Never", 1, 
                   ifelse(data[,17] == "Once a Year", 2, 
                          ifelse(data[,17] == "Twice a Year", 3, 
                                 ifelse(data[,17] == "Several Times a Year", 4, 
                                        ifelse(data[,17] == "Monthly", 5, 
                                               ifelse(data[,17] == "Weekly", 6, 
                                                      ifelse(data[,17] == "Daily", 7, NA)))))))
data[,18] <- ifelse(data[,18] == "Never", 1, 
                   ifelse(data[,18] == "Once a Year", 2, 
                          ifelse(data[,18] == "Twice a Year", 3, 
                                 ifelse(data[,18] == "Several Times a Year", 4, 
                                        ifelse(data[,18] == "Monthly", 5, 
                                               ifelse(data[,18] == "Weekly", 6, 
                                                      ifelse(data[,18] == "Daily", 7, NA)))))))
data[,19] <- ifelse(data[,19] == "Never", 1, 
                   ifelse(data[,19] == "Once a Year", 2, 
                          ifelse(data[,19] == "Twice a Year", 3, 
                                 ifelse(data[,19] == "Several Times a Year", 4, 
                                        ifelse(data[,19] == "Monthly", 5, 
                                               ifelse(data[,19] == "Weekly", 6, 
                                                      ifelse(data[,19] == "Daily", 7, NA)))))))
data[,20] <- ifelse(data[,20] == "Never", 1, 
                   ifelse(data[,20] == "Once a Year", 2, 
                          ifelse(data[,20] == "Twice a Year", 3, 
                                 ifelse(data[,20] == "Several Times a Year", 4, 
                                        ifelse(data[,20] == "Monthly", 5, 
                                               ifelse(data[,20] == "Weekly", 6, 
                                                      ifelse(data[,20] == "Daily", 7, NA)))))))
data[,21] <- ifelse(data[,21] == "Never", 1, 
                   ifelse(data[,21] == "Once a Year", 2, 
                          ifelse(data[,21] == "Twice a Year", 3, 
                                 ifelse(data[,21] == "Several Times a Year", 4, 
                                        ifelse(data[,21] == "Monthly", 5, 
                                               ifelse(data[,21] == "Weekly", 6, 
                                                      ifelse(data[,21] == "Daily", 7, NA)))))))

#See number of missing cases.
summary(data) #should be 730 NAs.
#Remove only those cases with completely missing data. Essentially this is pairwise deletion.
PWdata <- data[!rowSums(is.na(data[ , 2:21])) == 20, ]
View(PWdata)  #Should see 733 to 757 entries.

#Subset data.
newdata <- PWdata[c(2:21)]
View(newdata)

library(lavaan)
OCB.model <- 'OCB.model =~ OCB_1 + + OCB_3 + OCB_4 + OCB_5 + OCB_6 + OCB_7 + OCB_8 + OCB_9 + OCB_10 +
      OCB_11 + OCB_12 + OCB_13 + OCB_14 + OCB_15 + OCB_16 + OCB_17 + OCB_18 + OCB_19 + OCB_20 + OCB_21'
fit <- cfa(OCB.model, data=newdata)
summary(fit, fit.measures=TRUE)

#GRM.
library(psych)
describe(newdata)                      # means and SDs for data file with 12 ratings
cor(newdata)                           # correlation matrix
scree(newdata, factors=FALSE)          # scree plot
omega(newdata)                         # runs bifactor model

library(ltm) #Note: This model best fits the data.
descript(newdata)                      # runs frequency tables for every item
fit<-grm(newdata)                      # graded response model
fit                                    # print cutpoints and discrimination
plot(fit)                              # plots item category characteristic curves
plot(fit, type="IIC")                  # plots item information curves

#Multidimensional IRT testing
library(mirt)

#giving name to model we're estimating, calling it test1PL. 1 means number of dimensions, when we move into multidimensional IRT will change it. SE=TRUE means yes we want to estimate the SE of item parameters and theta
test1PL<-mirt(newdata,1,'Rasch',SE=TRUE)
#Output: Iteration: 17, Log-Lik: -25238.428, Max-Change: 0.00007
#telling us that maximum likelihood is this process that starts off with some starting values, uses IRT, p value and point biserial correlation, starts with this to decide how difficult and discriminating an item is. Maximum change is maximum change between last iteration and the one before it. Of all the item parameters, between the 10th and 11th step, the biggest difference in an item parameter was .00008, trying to continue going until another iteration won't make a difference. Default right now is .0001.
#getting coefficients/item parameters. IRTpars=TRUE means give me IRT parameters and not item FA parameters which aren't easy to interpret. Simply=TRUE makes it all nice and neat in columns
coef(test1PL,simplify=TRUE)
#should result in column of a's all with 1's because using 1PL! then b, g's (g = c parameter), u=upper asymptote

#Going to plot ICCs, will plot all of them at once
plot(test1PL, type='trace') #trace means type of graph we're drawing is trace plots
plot(test1PL,type='trace',theta_lim=c(-3,3))
plot(test1PL,type='infotrace',theta_lim=c(-3,3)) #gives us ICC
plot(test1PL,theta_lim=c(-3,3)) #gives us TCC
plot(test1PL,type='info',theta_lim=c(-3,3)) #gives us TIC
plot(test1PL,type='infoSE',theta_lim=c(-3,3))

#who is this test measuring well is people who have an average level of knowledge or slightly below, probably pretty appropriate for A-F scale class, means we can probably distinguish people who should get D's and F's from people who get A's B's and C'c
#first looking at an easy item
itemplot(test1PL,13,theta_lim=c(-3,3))
itemplot(test1PL,13,type='info',theta_lim=c(-3,3))

#doesn't recommend including SE on item graph but will do just to look, really only matters at test level
itemplot(test1PL,13,type='infoSE',theta_lim=c(-3,3))
itemplot(test1PL,18,theta_lim=c(-3,3)) #ICC for item 18, a difficult item
itemplot(test1PL,18,theta_lim=c(-6,6)) #change limit

###Mixed MIRT Model###
mixedmirt(data = newdata, model = 1, itemtype = "gpcm")
coef(mixedmirt,IRTpars=TRUE,simplify=TRUE)
