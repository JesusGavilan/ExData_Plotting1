electric_cons <- read.csv("./household_power_consumption.txt", sep = ";" , na.strings = "?")
electric_cons$DateTime <- strptime(paste(electric_cons$Date, electric_cons$Time), "%d/%m/%Y %H:%M:%S")
electric_cons$Date <- as.Date(electric_cons$Date, "%d/%m/%Y")
electric_cons <- subset(electric_cons, electric_cons$Date == "2007-02-01" | electric_cons$Date == "2007-02-02")
col <- "red"
xlab <- "Global Active Power (kilowatts)"
title <- "Global Active Power"
hist(electric_cons$Global_active_power, col = col , xlab = xlab, main = title)
