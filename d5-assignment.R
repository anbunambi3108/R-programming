movies
colnames(movies)
head(movies)
summary(movies)
str(movies)
#bar plot:
a=table(movies$Action)
barplot(a,
        main = "Movies bar plot",
        xlab="improvements",
        ylab="frequency",
        legent=rownames(a),
        col=c("pink"," light blue"))
#grouped bar plot:
a1=table(movies$Action,movies$Comedy)
barplot(a1)
barplot(a1,
        beside=TRUE,
        main="Movies grouped bar plot",
        xlab="gener",
        ylab="frequency",
        legend=rownames(a1),
        col=c("pink"," light blue"))
#line chart:
plot(movies$Action,movies$votes,type="o",main = "Movies line chart")
plot(movies$Comedy,movies$votes,type="b",main = "Movies line chart")
#scatter plot
plot(x=movies$year,
     y=movies$length,
     main = "MOVIES:year vs length",
     xlab = "year",
     ylab = "length",
     xlim=c(1939,2000),
     ylim= c(1,130))
#pie chart:
x<-c(35,10,15,25,15)
labels<-c("Action","Horror","Drama","Comedy","Thriller")
pieper=round(x/sum(x)*100)
b=paste(labels,pieper,"%",sep="")
pie(x1,
    labels=pieper,
    main = "movies pie chart",
    col = c("pink"," light blue","light green","orange","green")
)
legend("topright",c("Action","Horror","Drama","Comedy","Thriller"),
       fill = c("pink"," light blue","light green","orange","green") 
)
#3d pie chart:
library(plotrix)
x1<-c(35,10,15,25,15)
labels1<-c("Action","Horror","Drama","Comedy","Thriller")
pieper1=round(x1/sum(x1)*100)
b1=paste(labels1,pieper1,"%",sep="")
pie3D(x1,
      labels=pieper1,
      main = "movies pie chart",
      col = c("pink"," light blue","light green","orange","#99ffff"),
      explode = 0.4
)
#histogram:
v=c(1,3,27,32,5,63,26,25,18,16,4,45,29,19,51,58,9,42,6)
hist(v,
     xlab="age",
     col = "pink",
     border = "black",
     xlim = c(0,70),
     breaks=5)
#ggplot2:
library(ggplot2)
movies = filter(length < 240) 
ggplot(aes(x = votes, y = length)) +
  geom_point(alpha = 0.25)

#ggplot2 histogram:
library(ggplot2movies)
pt=ggplot(data=movies,aes(x=rating))
pt1=pt+geom_histogram(binwidth=5,color="black",fill="pink",alpha=.5)
pt2=pt1+xlab("movie Rating")+ylab("movies count")+ggtitle("movie histogram")
data