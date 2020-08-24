par(mfrow=c(2,2))

par(mar=c(4,4,4,4))

plot(hhpc_sub$dt, hhpc_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

plot(hhpc_sub$dt, hhpc_sub$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(hhpc_sub$dt, hhpc_sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

points(hhpc_sub$dt, hhpc_sub$Sub_metering_2, type = "l", col = "red")

points(hhpc_sub$dt, hhpc_sub$Sub_metering_3, type = "l", col = "blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = 0.8)

plot(hhpc_sub$dt, hhpc_sub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.copy(png,'plot4.png')
dev.off()
