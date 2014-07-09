########################################
## Preparation for the plot
## convert the numbers to numeric values

hpc2<-transform(hpc1, Global_active_power = as.numeric(Global_active_power), Voltage = as.numeric(Voltage), Sub_metering_1 = as.numeric(Sub_metering_1), Sub_metering_2= as.numeric(Sub_metering_2) )

## plot1
hist(hpc2$Global_active_power, main = "Global Active Power", col="red", ylim=c(0, 1340), xlab="Global Active Power (kilowatts)")
