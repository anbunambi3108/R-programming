library(readr)
setwd("/Users/anbun/Documents/r_programming_exercise")
data<- read.csv("mtcars.csv")
print(data)
head(data,10)

system.file(dir("extdata",package = "readr"))
library(tidyverse)
list.files(readr_example(""))
read_csv(readr_example('mtcars.csv'))
read_csv(readr_example('mtcars.csv'), n_max = 10)
