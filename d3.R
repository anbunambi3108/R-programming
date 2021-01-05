# next statement:
x<-LETTERS[ 1:17]
for(i in x){
  if(i=="O"){
    next
  }
  print(i)
}
##
v = LETTERS[1:6]
for (i in v){
  if(i=="D"){
    next
  }
  print(i)
}
##synatax of switch in r

#switch(expression,list)

##ex-1
switch(0,"black","white","blue","teal","salmon")
##simple calculator:
add <- function(x,y){
  return(x+y)
}
sub <- function(x,y){
  return(x-y)
}
print("select operation: ")
print("1.add")
print("2.sub")
uin=as.integer(readline("enter choice[1/2]:"))
num1=as.integer(readline("enter num1:"))
num2=as.integer(readline("enter num2:"))
op<- switch(uin,"+","-")
r <- switch(uin,add(num1,num2),sub(num1,num2))
print(paste(num1,op,num2,"=",r))
##concat string
#paste()
##syntax(...,sep="",collapse=NULL)
##collapse-to eliminate the space between two strings
a<-"hello"
b<-"how"
c<-"i am doing good"
print(paste(a,b,c,sep="-",collapse = ""))
##to find length of the string:
#the function str_length()
#inbuilt function- nchar()
library(stringr)
str_length("hellohow are you")
nchar("harry-styles")
nchar("h****el'lo")
##to acces some parts of the string:
#substr(....,start,end)
#substring(.....,start,end)
substr("Harry styles is the best-artist",1,1)
substr("Harry styles is the best-artist",2,5)
substr("Harry styles is the best-artist",5,5)
str<- "Harry styles"
len<-nchar(str)
print(paste(len))#12
print(substring(str,len,len))#since len is given prints letter @ position 12
print(substring(str,len+1,len+1))
print(substring(str,len-2,len))
print(substr(str,1,5))
##case conversion:
##toupper()
##tolower()
## casefold-ignorence of character
##syntax-casefold(...,upper=TRUE/FALSE)
str <-"HaRrY StYlEs"
print(toupper(str))
print(tolower(str))
print(casefold(str,upper=TRUE))
print(casefold(str,upper=FALSE))
#regular expression
#grepl
#grep
txt <- "hey how are you"
grepl("you",txt)
grepl("hello",txt)
grepl("are you",txt)
grepl("hey you",txt)
let <- c('a','b','c','d','e','b','b')
grepl('b',let)
grep('b',let)
## sub and gsub
a <- c("i like math ","i like apple")
rep<- sub(pattern = "l",replacement = "disl" , a)
print(rep)

msg<-c("I like maths","you like English")
swe<-sub(pattern="you",replacement="I",msg)
p<-gsub(pattern=" ",replacement="_",msg)
print(swe)
print(p)

