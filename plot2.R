hpc2$days<-weekdays(hpc2$NewDate, abbreviate=TRUE)

plot(hpc2$Global_active_power,type="l",xaxt="n",ylab="Global Active Power (kilowatts)", xlab="")
axis(1, at=c(match("2007-01-02 00:00:00",hpc2$NewDate),match("2007-02-02 00:00:00",hpc2$NewDate),match("2007-02-02 23:59:00",hpc2$NewDate)), labels=c("Thu", "Fri", "Sat"))

dev.copy(png, file="plot2.png", width = 480, height = 480, units = "px")
dev.off()
