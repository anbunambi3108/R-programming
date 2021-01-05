#graphical visvalisation od data- data visvalization
#ggplot-grammer of graphics
#install.packages("ggplot2")
library(ggplot2)
#mtcars
#colnames(mtcars)# to get the column names
pl=ggplot(data=mtcars,aes(x=mpg,y=hp))
pl2=pl+geom_point()+facet_grid(cyl~.)+stat_smooth()
pl2+coord_cartesian(xlim=c(10,30))+theme_bw()
#ggplot(data=mtcars,aes(x,y),geom_point(),facet_grid()+stat_smooth(),coord_cartesian())
#histogram with ggplots:
#install.packages("ggplot2movies")
library(ggplot2movies)
#head(movies)
pt=ggplot(data=movies,aes(x=rating))
pt1=pt+geom_histogram(binwidth=5,color="black",fill="pink",alpha=.5)
pt2=pt1+xlab("movie Rating")+ylab("movies count")+ggtitle("movie histogram")
#bar charts:
#represented in two ways horizontal and vertical.
count=table(mtcars$gear)
barplot(count)
barplot(count,
        main="bar charts",
        xlab="improvements",
        ylab="frequency",
        legend=rownames(count),
        col=c("pink"," light blue","light green"))
##mtcars$gear
##mtcars$vs

#grouped output
count1=table(mtcars$vs,mtcars$gear)
barplot(count1)
barplot(count1,
        beside=TRUE,
        main="grouped bar charts",
        xlab="no.of gear",
        ylab="frequency",
        legend=rownames(count1),
        col=c("pink"," light blue"))
## pie chart
x=c(10,20,50,20)
lab=c("C","Python","R","Web Designing")
pct=round(x/sum(x)*100)
la=paste(lab,pct,"%",sep="")
pie(x,
    labels = la,
    main = "pie chart")
#install.packages("plotrix")
#to print a 3d pie
library(plotrix)
x1=c(10,20,50,20)
lab1=c("C","Python","R","Web Designing")
pct1=round(x/sum(x)*100)
la1=paste(lab1,pct1,"%",sep="")
pie3D(x1,
      labels = lab1,
      main = "pie chart",
      col = c("pink"," light blue","light green","orange"),
      explode=0.1,theta=0.8
      )
legend("topleft",
        c("C","Python","R","Web Designing"),
        fill=c("pink"," light blue","light green","orange"),
        cex=0.5
       )



#histogram
v=mtcars$mpg
hist(v,col = "pink")
#density plot
d <- density(mtcars$mpg)
plot(d, main="Kernal density ")
polygon(d, col="pink", border="black")

#line chart
women
plot(women$weight,women$height,type="o",main = "line chart")
plot(women$weight,women$height,type="b",main = "line chart")
#word cloud
#install.packages("wordcloud")
library(wordcloud)
setwd("/Users/anbun/Documents/r_programming_exercise")
data= read.csv("onedata.csv")
print(data)
head(data)
wordcloud(words=data$name,
          freq = data$freq ,
          min.freq = 2,
          max.words = 50,
          random.order = FALSE
          )


library(wordcloud)
data=read.csv("E:/R Programs For Practice/DAY - 5/Class/Data/file.csv",header= TRUE)
head(data)
wordcloud(words=data$word,freq=data$freq,min.freq=2,max.words = 50,random.order = FALSE)


