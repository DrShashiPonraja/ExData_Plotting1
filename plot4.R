source('getData.R')

myDataSet<-getData()

par(mfrow=c(2,2))
plot(myDataSet$DateTimeFormat, myDataSet$Global_active_power, type="n", xlab="",ylab="Global Active Power")
lines(myDataSet$DateTimeFormat, myDataSet$Global_active_power,type='l')

plot(myDataSet$DateTimeFormat, myDataSet$Voltage, type="n", xlab="",ylab="Voltage")
lines(myDataSet$DateTimeFormat, myDataSet$Voltage,type='l')

plot(myDataSet$DateTimeFormat, myDataSet$Sub_metering_1, type="n", xlab="",ylab="Energy sub metering")
lines(myDataSet$DateTimeFormat, myDataSet$Sub_metering_1,type='l')
lines(myDataSet$DateTimeFormat, myDataSet$Sub_metering_2,type='l', col="red")
lines(myDataSet$DateTimeFormat, myDataSet$Sub_metering_3,type='l', col="blue")

plot(myDataSet$DateTimeFormat, myDataSet$Global_reactive_power, type="n", xlab="",ylab="Global rective Power")
lines(myDataSet$DateTimeFormat, myDataSet$Global_reactive_power,type='l')

dev.copy(png, file='./figure/plot4.png')
dev.off()
