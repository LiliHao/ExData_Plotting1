
## Create plot1

png("plot1.png" , width = 480, height = 480)
hist(hpcD$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", yaxt = "n")
axis(2,seq(0,1200, by = 200))
dev.off()