# probability distribution: 
#    A probability distribution describes how the values of a random variable is 
#distributed
#QUESTION:
#Suppose there are twelve multiple choice questions in an English class 
#quiz. Each question has five possible answers, and only one of them is 
#correct. Find the probability of having four or less correct answers 
#if a student attempts to answer every question at random.
#pbinom(trials, size , p success)
pbinom(4,12,1/5)
#output:0.9274445
#____________________________________________________________________
#poission distribution:
#QUESTION:
#If there are 12 cars crossing a bridge per minute on average, 
#find the probability of having 17 or more cars crossing the bridge 
#in a particular minute.
##    //ppois(no of trail ,lambda,lower=FALSE)//
ppois(16,lambda = 12,lower=FALSE)
#result:10.12%
#____________________________________________________________________#
#continuous random distribution:
#QUESTION:
#Select ten random numbers between one and three.
runif(10, min=1, max=3)
#____________________________________________________________________#
#exponential distibution:
#desbribe the arrival time of randomly occuring independent event
#QUESTION:
#suppose the mean check out time of a supermarket cashier is 3 min 
#find the probabily of customer check out being completed in less than 
#2 mins
pexp(2,rate = 1/3)
#result=48.65%
#____________________________________________________________________#
#normal distribution:
#Question:
#Assume that the test score of a college enterance exam fits a 
#normal distribution manner ,mean=72,standard deviation is 15.2
#what is the % of students scoring 84 or more in the exam
##    //pnorm(no of trials, mean=, sd=, lower.tail=FALSE) //
pnorm(84,mean=72,sd=15.2,lower.tail = FALSE)
#result=21.49%
#____________________________________________________________________#
#chi-suqare:
#Find the 95th percentile of the ChiSquared distribution with 7 degrees
#of freedom.
##    //qchisq(percentile ,df)//
qchisq(0.95,df=7)
#result=14.06% for df=7
#____________________________________________________________________#
#t-distribution:
#find the 2.5th  and 97 th distribution with degree of freedom is 5
##    //qt(c(percentile1,percentile 2),df=)//
qt(c(0.025,0.97),df=5)
#____________________________________________________________________#
#f-distribution:
##    //qf(percentile df1=, df2=)// 
qf(0.95,df1=5,df2=2)
#____________________________________________________________________#
#time series data and graphical representation:
rain=c(30,24,56,78,90,56,35,40,20,10,50,65)
result=ts(rain,start=c(2017,1),frequency=12)
print(result)
#plot for time series
plot(result)
hist(result,col="light blue")
pie(rain,labels = result,main="pie chart",col = c("pink","light blue","light green","orange"))
#______________________________________________________
#time series data and graphical representation:
r=c(1128,833,1142,456,677,465,6878,345,234,4565,547,233)
r1=c(342,57,234,4657,478,324,578,196,4365,685,789,879)
m=matrix(c(r,r1),nrow=12)
print(m)
rms=ts(m,start=c(2017,1),frequency=12)
print(rms)
#plot for time series
plot(rms)
##____________________
#time series data and graphical representation:
data=read.csv("/Users/anbun/Documents/r_programming_exercise/sales.csv")
a=data$"Retail.trade.clothing"
b=c(a)
result=ts(b,start=c(2012,2),frequency=12)
print(result)
#plot for time series
plot(result)
plot(density(result))
hist(result)
summary(result)
#____________________________________