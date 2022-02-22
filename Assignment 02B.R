x <- 10:1
y <- -4:5
z <- c('Hockey', 'Football', 'Curling', 'Soccer', 'Rugby', 'Baseball', 'Golf', 'Basketball', 'Wrestling', 'Tennis')
theDF <- data.frame(x,y,z)
theDF
str(theDF)
theDF[1,2]
View(theDF)
theDF$x
theDF$x[3]
names(theDF)<-c("Popularity", "Team Strength", "Sport")
sd(theDF$"Team Strength")