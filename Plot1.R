hhpc<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

hhpc$dt <- strptime(paste(hhpc$Date, hhpc$Time), "%d/%m/%Y %H:%M:%S")

hhpc$Date <- as.Date(hhpc$Date, "%d/%m/%Y")

hhpc_sub <- subset(hhpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

head(hhpc_sub)

hist(hhpc_sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", breaks = 13, ylim = c(0,1200), xlim = c(0, 6))

dev.cur()

dev.copy(png,'plot1.png')
dev.off()