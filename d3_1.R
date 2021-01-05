#to take input from the user:
name<- readline("entre name: ")
age<- readline("enter age:")
print(paste("name:",name,"and age:",age))
#to print the version of R:
print(R.version.string)
#create a sequence of num from 20 to 50:
a<-20:50
print(a)
#find te mean of numbers 20 t0 60
a1<-20:60
print(a1)
mean(a1)
mean(20:60)
#find the sum of num 51:91
a2<-51:91
print(a2)
sum(a2)
sum(51:91)
#print 10 random integers from -50 t0 50
b<-sample(-50:50,10)
print(b)
#fibonacci number from 1-10:
fib=numeric(10)
fib[1]=fib[2]=1
for(i in 3:10){
  fib[i]<-fib[i-2]+fib[i-1]
  print(fib)
}
x <- LETTERS[14:26]
for(x in )
print(x)
for ()
books_shops<-list(c("c","python","r","ai"),c(250,280,300),c(TRUE))
names(books_shops)<- c("books","money","purchase")
print(books_shops)
for(i in books_shops){
  print(i)
}
name=c("jai","prince","guru","boo")
height=c(5.1,6.2,5.1,5.2)
qualification=c("msc","ma","msc","msc")
address=c("deli","bagalore","chennai","patan")
df=data.frame(name,height,qualification,address)
print(df)
colnames(df)[which(names(df)=="address")]="location"
print(df)
str(df)
mean(df$height)
max(df$height)
min(df$height)

name=readline("enter name")
uid=readline("enter uid")
course=readline("enter course")
branch=readline("enter branch")
if(course == " "){
  print(paste(course=="ml"))
}else{
  print(paste(course))
}
print(paste(name,uid,course,branch))

