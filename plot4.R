anal.data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
anal.data$Date <- as.Date(anal.data$Date, "%d/%m/%Y")
anal.data <- anal.data[anal.data$Date <= as.Date("02/02/2007","%d/%m/%Y")  & anal.data$Date >= as.Date("01/02/2007","%d/%m/%Y") ,]
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(x=anal.data$x, y = anal.data$Global_active_power, type="l", xlab="", ylab="Global Active Power)")
plot(x=anal.data$x, y = anal.data$Voltage, type="l", ylab="Voltage", xlab="datetime")

plot(x=anal.data$x, y = anal.data$Sub_metering_1, type="l", xlab="", ylab="Energy sub meeting", col="black")
lines(x=anal.data$x, y = anal.data$Sub_metering_2, col="red")
lines(x=anal.data$x, y = anal.data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, bty="n", cex= 0.8, col=c("black", "red", "blue", lty=c(1,1,1)))

plot(x=anal.data$x, y = anal.data$Global_reactive_power, type="l", ylab="Global_reactive_power")
dev.off()
