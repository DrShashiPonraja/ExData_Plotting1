source('getData.R')

myDataSet<-getData()


hist(myDataSet$Global_active_power, col='red', xlab="Global Active Power", main = "Global Active Power")
dev.copy(png, file='./figure/plot1.png')
dev.off()
