#1
txt1 <- "This is 2020"
my_pattern <- "[[:upper:][:digit:]]"
grepl(my_pattern,txt1)

#2
my_pattern <- "\\s[a-z][a-z]\\s"
strpos1 <- gregexpr(my_pattern,txt1)[[1]][1]
strpos1
txt2 <- sub(my_pattern," is not ",txt1)
print(txt2)

#3
my_pattern <- "\\d{4}$"
strpos2 <- gregexpr(my_pattern,txt2)[[1]][1]
strpos2

#4
#(i)lies between 16.2 and 27.5
a=pnorm(27.5,mean=22,sd=5)
print(a)
b=pnorm(16.2,mean=22,sd=5)
print(b)
r=a-b
print(r)

#ii)is greater than 29
c=pnorm(29,mean=22,sd=5)
print(c)
print(1-c)

#(iii)is less than 17 
d=pnorm(17,mean=22,sd=5)
print(d)

#(iv)is less than 15 or greater than 25
e=pnorm(15,mean=22,sd=5)
print(e)
f=pnorm(25,mean=22,sd=5)
print(f)
r1=e+(1-f)
print(r1)

#5
#(i)20,25 or 30 times
a1=dbinom(20,60,prob=0.5)
print(a1)
a2=dbinom(25,60,prob=0.5)
print(a2)
a3=dbinom(30,60,prob=0.5)
print(a3)
r2=sum(c(a1,a2,a3))
print(r2)

#(ii)less than 20 times
a4=pbinom(19,60,prob=0.5)
print(a4)

#(iii)between 20 and 30 times 
a5=pbinom(30,60,prob=0.5)
print(a5)
a6=pbinom(20,60,prob=0.5)
print(a6)
r3=a5-a6
print(r3)
