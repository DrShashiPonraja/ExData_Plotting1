library(sqldf)
Sys.setenv(TZ="Europe/Madrid")
z<-read.csv.sql('./data/household_power_consumption.txt', sep=';', header = TRUE, sql ="select * from file where (Date = '1/2/2007') or (Date = '2/2/2007') ")

head(z)
z$Date
class(z)
nrow(z)
class(z$Date)

z$DateTime<-paste(z$Date, z$Time)
z$DateTime

z$DateTimeFormat<-(strptime(z$DateTime, '%e/%m/%Y %H:%M:%S'))

z$DateTimeFormat
class(z$DateTimeFormat)
