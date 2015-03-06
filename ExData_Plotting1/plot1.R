
##read data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

##data within 2/1 - 2/2/07
data$date2 <- strptime(data$Date, "%d/%m/%Y")
x <- subset(data, data$date2 %in% c('2007-02-01','2007-02-02' ))

##plot histogram to plot1.png
png("plot1.png")
hist(x$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", bg = "transparent") 
dev.off()