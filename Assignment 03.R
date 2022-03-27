DF<-read.csv("Yellow_Sample.csv")
DF<-DF[which(DF$trip_distance>0 & 
               DF$trip_distance<10),]
summary(DF$trip_distance)
cat("The mean trip distance is", mean(DF$trip_distance), "miles")
cat("The mean total amount is", mean(DF$total_amount), "usd")

#-5 <= 10 95/100