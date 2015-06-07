if(!file.exists("exdata-data-household_power_consumption.zip")) {
    rawdata <- tempfile()
    download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip",rawdata)
    datafile <- unzip(rawdata)
    unlink(rawdata)
}
powerdata <- file("household_power_consumption.txt")
powerdataset <- read.table(text=grep("^[1,2]/2/2007", readLines(powerdata), value=TRUE), col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep=";", header=TRUE)
powerdataset$Datetime <- strptime(paste(powerdataset$Date, powerdataset$Time), "%d/%m/%Y %H:%M:%S")

## plot2
plot(powerdataset$Datetime, powerdataset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
## copy to png file
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
## save plot2
cat("saving plot2.png", getwd())