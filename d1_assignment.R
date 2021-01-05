#1
M = matrix( c(9,10,11,12,13,14,15,16), nrow = 4, ncol = 2, byrow = TRUE)
print(M)
#2
userID <- readline("Enter ID: ")
branch <- readline("Enter Branch: ")
cat(userID,branch,'\n')
#3
report <- data.frame(
  name= c('harry','niall','zayn'),
  subject = c ('maths','science','gk'),
  score =c(95,97,99),
  rank =c(3,2,1))
print(report)
#4
summary(report)
#5
print("extracted column:")
print(report$name)
#6
print("extractetd first two rows:")
rows <- report[1:2,]
print(rows)