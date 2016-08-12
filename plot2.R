## Create plot2
par(bg="transparent")
plot2 <- plot(hpcD$DateTime, hpcD$Global_active_power, type ="l", ylab = "Global active power (kilowatts)", xlab = "") 
dev.copy(png, file = "plot2.png", width=480,height=480) ## Copy plot to a PNG file
dev.off() ## close the PNG device
