source('getData.R')

myDataSet<-getData()
plot(myDataSet$DateTimeFormat, myDataSet$Sub_metering_1, type="n", xlab="",ylab="Energy sub metering")
lines(myDataSet$DateTimeFormat, myDataSet$Sub_metering_1,type='l')
lines(myDataSet$DateTimeFormat, myDataSet$Sub_metering_2,type='l', col="red")
lines(myDataSet$DateTimeFormat, myDataSet$Sub_metering_3,type='l', col="blue")

dev.copy(png, file='./figure/plot3.png')
dev.off()
