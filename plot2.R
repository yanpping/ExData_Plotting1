anal.data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
anal.data$Date <- as.Date(anal.data$Date, "%d/%m/%Y")
anal.data <- anal.data[anal.data$Date <= as.Date("02/02/2007","%d/%m/%Y")  & anal.data$Date >= as.Date("01/02/2007","%d/%m/%Y") ,]
anal.data$x <- strptime(paste(anal.data$Date, anal.data$Time), "%Y-%m-%d %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(x=anal.data$x, y = anal.data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
