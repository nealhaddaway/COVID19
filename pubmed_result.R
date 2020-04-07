covid<-read.csv(file.choose())
str(covid)
attach(covid)
library(ggplot2)

#histogram of COVID research found on 7th April 2020 in PUBMED (all field search for "COVID")
ggplot(data=covid,aes(x=week))+
  geom_histogram(stat="count",binwidth=1,fill="#aec6cf")+
  xlab("Week of 2020")+
  ylab("Record count")
