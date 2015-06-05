anal.data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
anal.data$Date <- as.Date(anal.data$Date, "%d/%m/%Y")
anal.data <- anal.data[anal.data$Date <= as.Date("02/02/2007","%d/%m/%Y")  & anal.data$Date >= as.Date("01/02/2007","%d/%m/%Y") ,]
png("plot1.png", width=480, height=480)
hist(anal.data$Global_active_power, breaks=20, col="red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
