library(e1071)
data1=read.csv("/Users/anbun/Documents/r_programming_exercise/incomedata.csv")
skewness(data1$amount)
plot(density(data1$amount))
str(data1)
library(e1071)
data2=read.csv("/Users/anbun/Documents/r_programming_exercise/markdata.csv")
skewness(data2$mark)
plot(density(data2$mark))  
print(data2$mark)
summary(data2)

library(e1071)
data3=read.csv("/Users/anbun/Documents/r_programming_exercise/heightdata.csv")
skewness(data3$height)
plot(density(data3$height))
print(data3$height)

#Kurtosis:peakness of distribution
#>3 leptokurtic
#<3 platykurtic
#==3 mesokurtic-normal distribution
library(e1071)
data=read.csv("/Users/anbun/Documents/r_programming_exercise/markdata.csv")
kurtosis(data$mark)
#hypothesis:a premise or claim or fact that we want to test
#null hypothesis-fact
#alternative hypothesis-opposite
#outcome
#reject null
#fail to reject-if the null hypothesis is not rejected we have to accept it

##level of confident:
##L=1-c -level of confident is calculated by

#when to use t-test
#data independent.
#normally distributed
#similar amount of varience

#t-test:
library(e1071)
v1<-c(15.2,15.3,16,15.8,15.6,14.9,15,15.4,15.6,15.7,15.5,15.2,15.5,15.1,15.3,15)
v2<-c(15.9,15.9,15.2,16.6,15.2,15.8,15.8,16.2,15.6,15.6,15.8,15.5,15.5,15.5,14.9,15.9)
t.test(v1,v2)


library(e1071)
v1<-c(82,93,98,89,88,95)
t.test(v1)

t.test(v1,y=NULL,mu=0,conf.level = 0.95)
#ANOVA:
g1=c(4,5,8,5,6)
g2=c(11,13,12,15,9)
g3=c(9,4,3,6,5)
com=data.frame(cbind(g1,g2,g3))
com
stck_grp=stack(com)
stck_grp
#result
anova_result=aov(values~ind,data=stck_grp)
summary(anova_result)


#install.packages("caTools")## this is used to test,train,and split in liner regression

#the coin is flipped 10 times