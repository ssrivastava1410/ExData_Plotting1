plot(hhpc_sub$dt, hhpc_sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

points(hhpc_sub$dt, hhpc_sub$Sub_metering_2, type = "l", col = "red")

points(hhpc_sub$dt, hhpc_sub$Sub_metering_3, type = "l", col = "blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,'plot3.png')
dev.off()
