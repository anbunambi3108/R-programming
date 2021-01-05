#ex1
install.packages("googleVis")
library(googleVis)
dfr=data.frame(name=c("GRE", "ARG", "BRA"),
              val1=c(20,32,19),
              val2=c(25,52,12))

print(dfr)
#ex2
dfr1=data.frame(name=c("Harry", "Niall", "Liam"),
               Pts=c(20,32,19),
               Rbs=c(25,52,12))
LineC=gvisLineChart(dfr1)
plot(LineC)

#ex3:
dfr2=data.frame(name=c("Harry", "Niall", "Liam"),
                Pts=c(20,32,19),
                Rbs=c(25,52,12))
LineC=gvisLineChart(dfr2)
plot(LineC)
#4
dfr3=data.frame(name=c("Harry", "Niall", "Liam"),
                Pts=c(20,32,19),
                Rbs=c(25,52,12))
lcp<- gvisLineChart(dfr3, "name", c("Pts"),
)
plot(lcp)
#5
dfr4=data.frame(name=c("Harry", "Niall", "Liam"),
                Pts=c(20,32,19),
                Rbs=c(25,52,12))
lcp1=gvisLineChart(dfr4, "name", c("Pts","Rbs"),
                        options=list(
                          series="[{targetAxisIndex: 0},
                         {targetAxisIndex:1}]",
                          vAxes="[{title:'Pts'}, {title:'Rbs'}]"
                        ))
plot(lcp1)

#ex6
dfr5=data.frame(name=c("Harry", "Niall", "Liam"),
                Pts=c(20,32,19),
                Rbs=c(25,52,12))
BarC <- gvisBarChart(dfr5)
plot(BarC)
