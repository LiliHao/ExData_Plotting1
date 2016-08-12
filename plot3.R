## Create plot3
dim(hpcD)
head(hpcD)
par(bg="transparent")
hpcD$Sub_metering_1 <- as.numeric(hpcD$Sub_metering_1)
hpcD$Sub_metering_2 <- as.numeric(hpcD$Sub_metering_2)
hpcD$Sub_metering_3 <- as.numeric(hpcD$Sub_metering_3)

plot(hpcD$DateTime, hpcD$Sub_metering_1, xlab="",ylab="Energy sub metering", type="n")

lines(hpcD$DateTime, hpcD$Sub_metering_1, col="black")
lines(hpcD$DateTime, hpcD$Sub_metering_2, col="red")
lines(hpcD$DateTime, hpcD$Sub_metering_3, col="blue")

legend("topright", col=c("black", "red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1), cex=.4, inset=.0001)

dev.copy(png, file="plot3.png")
dev.off()
