library(sqldf)
Sys.setenv(TZ="Europe/Madrid")

getData<-function(){
  z<-read.csv.sql('./data/household_power_consumption.txt', sep=';', header = TRUE, sql ="select * from file where (Date = '1/2/2007') or (Date = '2/2/2007') ")
  
  z$DateTimeFormat<-strptime(paste(z$Date, z$Time),'%e/%m/%Y %H:%M:%S')
  
  return (z)
  #z$DateTimeFormat<-(strptime(z$DateTime, ))
}
