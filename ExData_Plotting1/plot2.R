
##read data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

##data within 2/1 - 2/2/07
data$date2 <- strptime(data$Date, "%d/%m/%Y")
x <- subset(data, data$date2 %in% c('2007-02-01','2007-02-02' ))

## create a date with time field
x$datetime <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")

##create a weekday field (unecessary - weekday abbrev is part of label)
##x$weekday <- weekdays(x$date2, abbreviate = TRUE)

##plot line scatterplot to plot2.png
png("plot2.png")
plot(x$datetime, x$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", 
     xlab = "", bg = "transparent")
dev.off()