hpc <- read.table('household_power_consumption.txt', sep = ";", header=TRUE)
head(hpc)
dim(hpc)
table(hpc$Date)

# First filter only on date to speed up the processing.
hpcD$Date <- as.Date(hpcD$Date, "%d/%m/%Y")
hpcD <- hpc[Date >= as.Date("2007/02/01") & Date <= as.Date("2007/02/02"),]

# Now combine date and time into one date/time object
hpcD$DateTime <- as.POSIXct(paste(hpcD$Date, hpcD$Time),format="%Y-%m-%d %H:%M:%S")
head(hpcD)

hpcD$Global_active_power <- as.numeric(as.character(hpcD$Global_active_power))
