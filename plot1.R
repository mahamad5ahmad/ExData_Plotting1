

data<- read.table("household_power_consumption.txt")
getwd()

View(data)
data<- read.table("household_power_consumption.txt",sep=";")
dim(data)
hist(data$V4,col = "red")
?read.table
data<- read.table("household_power_consumption.txt",sep=";",header = TRUE)
hist(data$Global_active_power,col = "red")
class(data$Global_active_power)
as.numeric(data$Global_active_power)
class(data$Global_active_power)
we <- gsub(",", "", data$Global_active_power)
we <- as.numeric(we)
hist(we,col = "red")
hist(we,col = "red",main="global active power",xlab = "Glopal active power (kilowat)",ylab = "frequancy" )
?dev.copy
dev.copy(png, file = "plot1.png")
dev.off()
savehistory("E:/coursera/course 4/week 1/ExData_Plotting1/plot1.R")
