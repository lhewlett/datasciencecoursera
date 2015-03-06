##read data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

##data within 2/1 - 2/2/07
data$date2 <- strptime(data$Date, "%d/%m/%Y")
x <- subset(data, data$date2 %in% c('2007-02-01','2007-02-02' ))

## create a date with time field
x$datetime <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")

##plot line scatterplot to plot3.png
png("plot3.png")

plot(x$datetime, x$Sub_metering_1, type = "n",
     ylab = "Energy sub metering", 
     xlab = "", bg = "transparent")
points(x$datetime, x$Sub_metering_1, type = "l", col = "black")
points(x$datetime, x$Sub_metering_2, type = "l", col = "red")
points(x$datetime, x$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        col = c("black","red","blue"), lty = 1)

dev.off()