library(mlbench)
df=data(BostonHousing)
head(BostonHousing)
#1
str(BostonHousing)
#2
summary(BostonHousing$medv)
library(ggplot2)
pl=ggplot(data=BostonHousing,aes(x=medv))
pl2=pl+geom_density()+stat_density()
pl2+ labs(x="median value($1000s)",
          y="Density",
          title="Density plot of median value house price")
+theme_bw()
#3
BostonHousing%>%
select(c(crim, rm, age, rad, tax, lstat, medv)) %>%
  melt(id.vars = "medv") 
bh=ggplot(data=BostonHousing,aes(x=value,y=medv,colour=variable))
bh1=bh+geom_point()+facet_wrap(~variable,scales = "free",ncol = 2)+stat_smooth(aes(col="black"))
bh1+labs(x="variable value ",
         y="median house price($1000s)")+theme_minimal()
#4
library("caret")
set.seed(123)
to_train <- createDataPartition(y = BostonHousing$medv, p = 0.75, list = FALSE)
train <- BostonHousing[to_train, ]
test <- BostonHousing[-to_train, ]

#5
first_lm <- lm(medv ~ crim + rm + tax + lstat, data = train)
#6
lm1_rsqu <- summary(first_lm)$r.squared
print(paste("r-squared value of ", round(lm1_rsqu, 3), sep = ""))
#7
predicted <- predict(first_lm, newdata = test)
results <- data.frame(predicted = exp(predicted),
                      original = test$medv)

#8
ab=ggplot(data=BostonHousing,
       aes(x = predicted, y = original)) 
ab1=ab+geom_point() +
  stat_smooth() 
ab1+labs(x = "Predicted Values", 
         y = "Original Values", 
       title = "Predicted vs. Original Values") +
  theme_minimal()

