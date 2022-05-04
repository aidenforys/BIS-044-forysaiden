#Aiden Forys
#Assignment 05

#Part 1 and 2 
library(tidyverse)
data <- read.csv("TBQ05.20211116133909.csv")
data$C01713V02044 <- as.numeric(data$C01713V02044)
data$VALUE <- as.numeric(data$VALUE)
data$C01713V02044 <- replace(data$C01713V02044, is.na(data$C01713V02044),0)
data$VALUE <- replace(data$VALUE, is.na(data$VALUE),0)

#Part 3
tonnage <- subset(data, Port!="All Main Irish Ports")
tonnage$Region.of.Trade <- as.factor(tonnage$Region.of.Trade)
by(tonnage$VALUE, tonnage$Region.of.Trade, sum)

#part 4
graphdata <- data[which(data$Port!="All Main Irish Ports"),]
graphdata <- graphdata[!(graphdata$C01713V02044==0 | graphdata$C01713V02044==2 | graphdata$C01713V02044==3 | graphdata$C01713V02044==4 | graphdata$C01713V02044==5),]
ggplot(data = graphdata) +
  geom_point(aes(x=Quarter, y=VALUE, color=Port)) +
  xlab("Quarter") +
  ylab("Tonnage") +
  ylim(0, 5000) +
  ggtitle("Quarterly Tonnage Arriving From Great Brittain and Northern Ireland")+
  theme_minimal()
view(graphdata)

#100/100