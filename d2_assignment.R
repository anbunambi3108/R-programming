#1
num =19
if(num > 0){
  print(sqrt(num))
}else {
  print(NA)
}

#2
letters
LETTERS

#3
x = c(1,50,12)
sort(x,decreasing=TRUE)

#4
v = c(1,2,4,5)
n=0
print(v)
v1=mean(v)
print(paste("Mean=",v1))
for(i in 1:length(v)){
if (v[i] > v1){
  n=n+1
}
}
print(paste("amount of values that are larger than mean =",n))
#5
  for (i in 1:length(1:3)) {
    for (j in 1:10) {
      print(j+i-1)
    }}
#6
mydf=data.frame(
  a=c(3,7,NA,9),
  b=c(2,NA,9,3),
  f=c(5,2,5,6),
  d=c(NA,3,4,NA)
)
print(mydf)
new_mydf=data.frame(e=c(ifelse(is.na(mydf[,1]) & !is.na(mydf[,2]),
                               mydf[,2],ifelse(is.na(mydf[,2]) & !is.na(mydf[,4]),
                                               mydf[,4], mydf[,3]))))
mydf = cbind(mydf,new_mydf)
print(mydf)

#7
x=0
while(x<35){
  x=x+1    
  if(x==7)next
  print(x)
}
#10
name=c("harry","niall","zayn")
marks=c(39,37,35)
attempts=c(0,2,1)
qualify=c("yes","yes","yes")
df=data.frame(name,marks,attempts,qualify)
print(df)
rowdf = df[,-c(1,1)]##deletes the row
print("after deleteing row-1")
print(rowdf)
coldf=df[-c(1,1),]##deletes the column
print("after deleteing column-1")
print(coldf)