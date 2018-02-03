source('getData.R')

myDataSet<-getData()
plot(myDataSet$DateTimeFormat, myDataSet$Global_active_power, type="n", xlab="", ylab="Global Active Power")
lines(myDataSet$DateTimeFormat, myDataSet$Global_active_power,type='l')

dev.copy(png, file='./figure/plot2.png')
dev.off()
