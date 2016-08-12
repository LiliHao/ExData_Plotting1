par(mfrow = c(2, 2), bg="white", cex=.8, cex.axis = .8)

# Top left plot
plot(hpcD$DateTime, hpcD$Global_active_power, xlab="",
     ylab="Global Active Power", pch='.')
lines(hpcD$DateTime, hpcD$Global_active_power)

# Top right plot
plot(hpcD$DateTime, hpcD$Voltage, xlab="datetime",
     ylab="Voltage", pch='.')
lines(hpcD$DateTime, hpcD$Voltage)

# Bottom left plot
plot(hpcD$DateTime, hpcD$Sub_metering_1, xlab="",
     ylab="Energy sub metering", type="n")

lines(hpcD$DateTime, hpcD$Sub_metering_1, col="black")
lines(hpcD$DateTime, hpcD$Sub_metering_2, col="red")
lines(hpcD$DateTime, hpcD$Sub_metering_3, col="blue")

legend("topright", col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1), bty="n", cex=.3)

# Bottom right plot
plot(hpcD$DateTime, hpcD$Global_reactive_power,
     xlab="datetime", ylab="Global_reactive_power", pch='.')
lines(hpcD$DateTime, hpcD$Global_reactive_power)


dev.copy(png, file="plot4.png")
dev.off()