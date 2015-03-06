##read data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

##data within 2/1 - 2/2/07
data$date2 <- strptime(data$Date, "%d/%m/%Y")
x <- subset(data, data$date2 %in% c('2007-02-01','2007-02-02' ))

## create a date with time field
x$datetime <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")

##plot 4 graphs to plot4.png
png("plot4.png")

#2x2
par(mfrow=c(2,2))

## plot 1

plot(x$datetime, x$Global_active_power, type = "l",
     ylab = "Global Active Power", 
     xlab = "", bg = "transparent")

## plot 2
with(x, plot(datetime, Voltage, type = "l", bg = "transparent"))


## plot 3

plot(x$datetime, x$Sub_metering_1, type = "n",
     ylab = "Energy sub metering", 
     xlab = "", bg = "transparent")
points(x$datetime, x$Sub_metering_1, type = "l", col = "black")
points(x$datetime, x$Sub_metering_2, type = "l", col = "red")
points(x$datetime, x$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black","red","blue"), lty = 1)

## plot 4
with(x, plot(datetime, Global_reactive_power, type = "l", bg = "transparent"))

dev.off()