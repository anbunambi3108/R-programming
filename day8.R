##correlation:
hrs = c(8,11,3,6,14,9,2,0,7,13,10,4,9)
marks = c(82,94,70,75,98,80,68,53,76,87,89,83,72)
cor.test(hrs,marks)

v=mtcars$cyl
v1=mtcars$gear
v2=mtcars$mpg
cor.test(v,v1)
cor.test(v,v2)
# "-" _ weak correlation
# "+" _ medium /strong correlation
#_____________________________________________________
##single linear regression
#predict:
h=c(5.1,5.5,5.8,6.1,6.4,6.7,6.4,6.1,5.10,5.7)
#response:
w=c(63,66,69,72,75,78,75,72,69,66)

relation=lm(w~h)
summary(relation)
r=data.frame(h=6.3)
final=predict(relation,r)
final
#_______________________________
hrs= c(8,11,3,6,14,9,2,0,7,13,10,4,9)
marks = c(82,94,70,75,98,80,68,53,76,87,89,83,72)
relation = lm(marks~hrs)
summary(relation)
r = data.frame(hrs=15)
fin = predict(relation,r)
fin
#cbind(h,m)
#_____________________________________________
#multiple linear regression
weight=c(1.4,2.8,3.4)
size=c(1.2,2.4,3.4)
tail=c(0.9,1,0.8)
relation=lm(size~weight+tail)
summary(relation)
r=data.frame(weight=2.5,tail=0.8)
fin=predict(relation,r)
fin
#____________________________________________
#in linear regression multiple independent -
#value cannot be pridicted
p =c(1,2,3,4,5)
per =c(5,7,8,9.5,6.5)
relation = lm(p ~ per)
summary(relation)
r = data.frame(per =10)
fin = predict(relation,r)
fin
#_________________________________________
#EXERCISE:
#time series and graphical representation :
set.seed(13)
mydata1 = rnorm(500,6)
mydata2 = rnorm(500,77)
mydata3 = runif(500)
mydata=data.frame(mydata1,mydata2,mydata3)
mydataMatrix = as.matrix(mydata)
#print(mydataMatrix)
myts = ts(mydata,start=c(1980,5),frequency=12)
print(head(myts))
print(plot(density(myts),col="pink",type="h",main="Time Series"))
#___________________________________________________
#EXERCISE
##anova:
ne=c(16.3,16.1,16.4,16.5)
s=c(16.9,16.5,16.4,16.2)
w=c(16.4,16.5,16.6,16.1)
e=c(17.1,17.2,16.6,16.8)
c=c(16.2,16.6,16.5,16.4)
com=data.frame(cbind(ne,s,w,e,c))
com
stack_grp=stack(com)
stack_grp
#result
anova_result=aov(values~ind,data=stack_grp)
summary(anova_result)
#__________________________________________________
#EXERCISE:
#1
library(e1071)
data1=c(12,13,54,56,25)
skewness(data1)
#2
library(e1071)
fi=c(2,2,3,1,6,11,8,3,2,2)
kurtosis(fi)
#_____________________________________________
#ex1
#The coin is flipped ten times. Find the probability of 7 heads occurring
#this is binomial distribution cause here we are finding probability of success or failure
#so prob of getting 1head per toss is 1/2=0.5
#pbinom(7,size=10,prob=1/2)
dbinom(7,size=10,prob=1/2)
#ex2
#A card is selected three times (and replaced). 
#Find the probability of 2 face cards occurring.
#pbinom(2,size=3,prob=3/13)
dbinom(2,size=3,prob=3/13)
#ex3
#A student decides to guess on a section of his ACT test. 
#The section contains 50 multiple choice questions and each question has 
#5 possible answers.
qbinom(0.75,size=50,prob=1/5)
#ex4
#A company ships 5000 cell phones. 
#They are expected to last an average of 10,000 hours before
#needing repair; with a standard deviation of 500 hours.
#Assume the survival time of the phones are normally distributed.
#If a phone is randomly selected to be tracked for repairs 
#find the expected number that needs repair,
#a) after 11,000 hours
pnorm(11000,mean=10000,sd=500,lower.tail=FALSE)
#_________________________________________
#linear regression:
set.seed(10)
library(caTools)
s=sample.split(mtcars,SplitRatio = 0.8)
train=subset(mtcars,split=TRUE)
test=subset(mtcars,split=FALSE)
model=lm(mtcars$mpg~.,data=train)
prt=predict(model,test)
print(prt)
plot(prt,type='l',col="red")
lines(mtcars$mpg,type="l",col="blue")
#___________________________________________________
#linear regression:
data = head(mtcars,20)
s = sample.split(data,SplitRatio = 0.7)
train = subset(data,s==TRUE)
test = subset(data,s == FALSE)
m = lm(mpg~.,train)
ypred = predict(m,test)
data = data.frame(ypred,test$mpg)
library(ggplot2)
ggplot(test, aes(x = hp, y = mpg)) +
  geom_line() +
  geom_line(aes(y = data$ypred),colour="red", shape = 1)
#____________________________________________________
library(e1071)
p<-c(14,8,7,13)
np<-c(8,6,4,14)
t.test(p,np)
t.test(p,y=NULL,mu=0,conf.level = 0.95)
t.test(np,mean=8.6)
#_____________________________________________________

