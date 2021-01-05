install.packages('readxl')
install.packages("xlsx")
library("xlsx")
library("readxl")
setwd("/Users/anbun/Documents/r_programming_exercise")
d <- read_excel("employee.xlsx")
print(d)
write.table(d , file="emp.xlsx" , row.names = FALSE  )
data <- read.table("emp.xlsx")
print(data)
s <- list(name="Harry",age=26,GPA=4.5)
class(s) <- "student"
s
s$name#to print the name alone
s$name<-"Harry"#to change the name
#setClass function()
setClass("students",slots=list(name="character",age="numeric",GPA="numeric"))
s <- new("students",name="niall",age=27,GPA=4.11)
s
#create a reference objects
setRefClass("studs")
stud <- setRefClass("studs",fields=list(name="character",age="numeric",GPA="numeric"))
s <- stud(name="Liam",age=27,GPA=3.9)
s

