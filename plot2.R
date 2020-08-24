plot(hhpc_sub$dt, hhpc_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png,'plot2.png')
dev.off()
