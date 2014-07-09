## Reading the Data
hpc=read.table("./data/household_power_consumption.txt",header=TRUE,check.names=FALSE,as.is=TRUE, sep=";")

## Selecting only the Days that are of our interest
hpc1<-hpc[which(hpc$Date =="1/2/2007" | hpc$Date =="2/2/2007"), ]

## concatenate the dates and time
hpc1$NewDate<-apply(hpc1[,c('Date', 'Time')],1, paste, sep=" ",collapse= " ")

## Convert them to Date
hpc1$NewDate<- strptime(hpc1$NewDate,  format="%m/%d/%Y %H:%M:%S")



