#1. T-Test ( score 1 and score 2)
#Manual calculation for the T-value
#Excel sheet
#R- Program

library(e1071)
s1<-c(3,3,3,12,15,16,17,19,23,24,32)
s2<-c(20,13,13,20,29,32,23,20,25,15,30)
t.test(s1,s2)
#2. ANOVA
#Excel sheet
#R Program
a<-c(0,2,3,5,8,10,12)
b<-c(1,2,3,9,10,10,11)
c<-c(1,4,5,5,8,9,10)
compile=data.frame(cbind(a,b,c))
compile
grp=stack(compile)
grp
#result
anova_result=aov(values~ind,data=grp)
summary(anova_result)

#voilin plot
library(ggplot2)
p=ggplot(ToothGrowth,aes(x=dose,y=len,fill="pink"))+geom_violin(trim=FALSE)
p

#qplot:
library(ggplot2)
qplot(x=mpg$hwy,geom = "density")
qplot(mpg$hwy,geom = "histogram",bin=10,color=I("black"),fill=I("pink"))
qplot(mpg$cty,mpg$hwy,geom = "point")
x=jitter(mpg$hwy)
y=jitter(mpg$cty)
z=factor(mpg$drv)
qplot(x,y,color=z)
qplot(x=mpg$class,y=mpg$hwy,geom="boxplot")

