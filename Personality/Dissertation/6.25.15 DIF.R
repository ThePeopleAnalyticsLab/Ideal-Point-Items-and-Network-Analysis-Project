library(mirt)
narc<-read.csv("/Users/rachelwilliamson/Documents/NARC_FORDIF.csv") #Note needs to be sorted by grouping variable, here is gender, need to do in excel
narc<-narc[c(1:40)] #leaving gender out of data
sex<-c(rep('MALE',1000),rep('FEMALE',1000)) #creating an atomic vector, since already sorted its in order, saying there are 1000 males and then 1000 females
sex<-as.factor(sex) #making sex a factor
levels(sex) #just confirms for you it did become a factor so you can treat it as a group variable

#no anchors, all items tested for DIF; Cannot control for group differences on theta yet#
#need to get SEs because we will need them for Wald tests, but not for LR tests#

findanchor<-multipleGroup(narc,1,sex,SE=TRUE) #where we estimate the multiple group model need SE to be true because Wald test needs SE
coef(findanchor,IRTpars=TRUE,simplify=TRUE)#2 sets of item parameters, one for males and one for females
M2(findanchor) #get model data fit for each group. One of important first checks in DIF is evaluating fit in each group

#Now, we conduct the first round of tests to find our anchors#

mirtCluster() #should speed it up

LRtest<-DIF(findanchor,c('a1','d'),plotdif=TRUE,theta_lim=c(-3,3))
LRtest #conducting likelihood ratio test. a1 and d saying we want overall tests of DIF from a1 and d. No hyperparameters estimated means we didn't free up parameters. Ignore here. AIC on first line is fully freed, 2nd is other model. If item is nonsig (p>.1) 

#anchors are: 3,7,15,19,22,25,26,36,37 as defined by those with p>.10#

#Now, let's do the Wald test too#
Waldtest<-DIF(findanchor,c('a1','d'),Wald=TRUE,plotdif=TRUE,theta_lim=c(-3,3))
Waldtest

#Add the anchors#
itemnames<-colnames(narc)
withanchors<-multipleGroup(narc,1,sex,invariance=c(itemnames[3],itemnames[7],itemnames[15],itemnames[19],itemnames[22],itemnames[25],itemnames[26],itemnames[36],itemnames[37],'free_means','free_var'),SE=TRUE)
coef(withanchors,IRTpars=TRUE,simplify=TRUE)
#NOW THE REAL TEST FOR DIF WITH LR#
LRtest2<-DIF(withanchors,c('a1','d'),plotdif=TRUE,theta_lim=c(-3,3))
LRtest2 #the first group is the referent group. Plots don't behave well with this command so just do them yourself. One way to check you did it correctly is your anchor p values should be a solid 1.0 (not .99 or anything)

#AND WITH WALD#
Waldtest2<-DIF(withanchors,c('a1','d'),Wald=TRUE,plotdif=TRUE,theta_lim=c(-3,3))
Waldtest2
#wald test gives us the same answers. sometimes good to verify wald test with LR. Also way quicker, if you have a lot of data can be one to use because it won't stop your program




##extra code from Michael
withanchors<-multipleGroup(narc,1,sex,invariance=c(itemnames[c(3,7,15,19,22,25,26,36,37)],'free_means','free_var'),SE=TRUE)