#unsuperviesed is a meachine learing algorithm
#k-mean clustering : we perform iteration

#install.packages("factorextra")
#install.packages("cluster")
#install.packages("ggplot")
library(factoextra)
library(ggplot2)
library(cluster)
#loadind data set
df=USArrests
head(df)
summary(df)
#data processing:
#scaling the data to avoid the biased results:
df <- scale(USArrests) # Scaling the data
head(df, n = 15)
summary(df)
#STEP 1 : FINDING NUMBER OF K VALUES
#To find the appropriate suitable K value:
#1. Compute k-means clustering using different values of clusters k.
#2. Next, the wss (within sum of square) is drawn according to the number of clusters.
#3. The location of a bend (knee) in the plot is generally considered as an indicator of the
#appropriate number of clusters
set.seed(27)
kmcluster <- kmeans(df, 4, nstart = 25)
#Syntax <- kmeans("dataframe_name",Number of clusters,nstart = no. of different random starting choices)
kmcluster
table(kmcluster$tot.withinss)
table(kmcluster$cluster)
#__________________________________________________________
head(iris)
ggplot2(iris, aes(Petal.Length, Petal.Width)) + geom_point()
set.seed(27)
k.max <- 10
#nstart - No. of random sets should be chosen?
#Total within - cluster sum of squares, i.e. sum(withinss).
#sapply - takes list, vector or data frame as input and gives output in vector
#iter. max is the number of times the algorithm will repeat the cluster assignment a
#nstart is the number of times the initial starting points are re-sampled.
#___________________________________________________
library(factoextra)
library(ggplot2)
library(cluster)
d=scale(USArrests)
head(d)
set.seed(27)
kmc=kmeans(d,4,nstart = 25)
fviz_cluster(kmc, data = d)
#_______________________________________-
trees            
library(factoextra)
library(ggplot2)
library(cluster)

data=trees
print(head(data))
data=scale(data)
print(head(data))
val=fviz_nbclust(data,kmeans,method="wss")
print(val)
result=kmeans(data,5,nstart = 20)
print(result)
print(fviz_cluster(result,data))
#__________________________________________________________


