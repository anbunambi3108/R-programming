name=c("harry","niall","zayn")
marks=c(39,37,35)
attempts=c(0,2,1)
qualify=c("yes","yes","yes")
df=data.frame(name,marks,attempts,qualify)
new_df=data.frame(name=c("liam","louis"),marks=c(34,33),attempts=c(3,4),qualify=c("yes","yes"))
#df=cbind(df,new_df)#cbind to bind the column to the existing data
df=rbind(df,new_df)#rbind to add rows to the existing data
print(df)
str(df)
##delete the column -> sunset and select=-c()
new_df1=subset(df,select=-c(name,qualify))
rdf=new_df1[-c(1,5),]
print(rdf)
cdf=new_df1[-c(2,4),]
print(cdf)

#to change the column name
colnames(df)[which(names(df)=="name")]="student name"
print(df)

#factors-which are used to categorize the data and store it as levels
f=c("a","a","a","a","b","a","b","b","b","c")
f1=factor(f)
print(f1)
print(table(f1))# prints a table 

#square root:
sqrt(5)
#log function
v=log10(200)*cos(pi)
print(v)
#to generate random value
sample(1:100,10)
round(runif(10,0,100),2)
#cumsum
cumsum(c(1,2,3))
v=c(1,100,12,30,50)
print(v)
max(v)
min(v)
length(c)
var(v)

##control statements:
##if 
value <- 1:10
if(sample(value,1)<=10){
  print(paste(value,"leass than 10"))}
## if -else
x=50
x1=100
if(x>x1){
  print("val is > val2")
}else{
  print("val is less val2")
}

#for 
x <- letters[1:10]
for(i in x){
  print (i)
}
#nested loop:
  mat1=matrix(4:30,2)
print(mat1)
for(val1 in seq(ncol(mat1))){
  for(val2 in seq(nrow(mat1))){
    print(mat1[val1,val2])
  }
}
## while
x=-5
while(x<=5){
  print(x)
  x=x+1
}
##repeat and break statement:
x=1:10
repeat{
  print(x)
  x=x+1
  if(x>5){
    break
  }
}


##
evenorodd<-function(a){
  if (a%%2==0){
    print(paste(a,"is an even number"))
  }else {
    print(paste(a,"is odd number"))
  }
}
print(evenorodd(5))
print(evenorodd(6))
###
hello <- function(name , age ){
  print(paste("Hello",name,",you are",age,"years old!"))
}

hello(readline("Enter you name : "),as.integer(readline("Enter your age : ")))

##creating a fnction to print the number in sequence:

new.func <- function(a){
  for(i in 1:5){
    b <- i^2
    print(b)
  }
}
new.func()
###
new.func = function(a=8,b=6){
  result = a*b
  print(result)
}
new.func(3,4)
new.func()
###
new.func = function(a,b){
  print(a^2)
  print(a)
  print(b)
}
new.func(3)
###
print(seq(32,44))
print(mean(25:82))
print(sum(41:68))
###
add_df_col = function(df,col){
  if(length(col)==nrow(df)){
    print("Length matches")
    df = cbind(df,col)
    print("Modified:")
    print(df)
  }
  else{
    print("Length does not match")
  }
}
gender = c("M","M","F")
add_df_col(df,gender)
present = c("Y","N")
add_df_col(df,present)