#install.packages("factoextra")
library(factoextra)
library(ggplot2)
data("USArrests") # Loading the data set 
df=scale(USArrests) # Scaling the data
head(df)

####################################
set.seed(123)# Compute k-means with k = 4
res <- kmeans(df, 4, nstart = 25)
print(km.res)# Print the results

####################################
aggregate(USArrests, 
          by=list(cluster=res$cluster),
          mean)
dd <- cbind(USArrests, 
            cluster = res$cluster)
head(dd)

#####################################
# Cluster number for each of the observations
res$cluster
head(res$cluster)
# Cluster size
res$size
# Cluster means
res$centers

#######################################
# plot for cluster
print(fviz_cluster(res,df))
