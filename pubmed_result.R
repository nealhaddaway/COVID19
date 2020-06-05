covid<-read.csv(file.choose())
str(covid)
attach(covid)
library(ggplot2)

#histogram of COVID research found on 5th June 2020 in PUBMED (all field search for "COVID-19" OR "nCoV" OR "2019 novel coronavirus" OR "2019-nCoV" OR "SARS-CoV-2": 19,274 hits, restricted to creation dates in 2020 = 19,260 records)
ggplot(data=covid,aes(x=week))+
  geom_histogram(stat="count",binwidth=1,fill="#aec6cf")+
  xlab("Week of 2020")+
  ylab("Record count")
