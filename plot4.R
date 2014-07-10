##plot4
# 4 figures arranged in 2 rows and 2 columns
par(mfrow=c(2,2))
#1st Plot:
plot(hpc2$Global_active_power,type="l",xaxt="n",ylab="Global Active Power", xlab="")
axis(1, at=c(match("2007-01-02 00:00:00",hpc2$NewDate),match("2007-02-02 00:00:00",hpc2$NewDate),match("2007-02-02 23:59:00",hpc2$NewDate)), labels=c("Thu", "Fri", "Sat"))

#2nd Plot:
plot(hpc2$Voltage,type="l",xaxt="n",ylab="Voltage", xlab="datetime")
axis(1, at=c(match("2007-01-02 00:00:00",hpc2$NewDate),match("2007-02-02 00:00:00",hpc2$NewDate),match("2007-02-02 23:59:00",hpc2$NewDate)), labels=c("Thu", "Fri", "Sat"))

# 3rd Plot:
plot(hpc2$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering", xlab="", col="black")
lines(hpc2$Sub_metering_2, col="red")
lines(hpc2$Sub_metering_3, col="blue")
axis(1, at=c(match("2007-01-02 00:00:00",hpc2$NewDate),match("2007-02-02 00:00:00",hpc2$NewDate),match("2007-02-02 23:59:00",hpc2$NewDate)), labels=c("Thu", "Fri", "Sat"))
# add legend
legend(1200,23, c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), title="", lwd=1, x.intersp=.8, y.intersp=.82, cex=.75, xjust=0, yjust=0.1, text.width=720, box.col=0)


#4th Plot
plot(hpc2$Global_reactive_power,type="l",xaxt="n",ylab="Global_reactive_power", xlab="datetime", ylim=c(0.0, 0.58))
axis(1, at=c(match("2007-01-02 00:00:00",hpc2$NewDate),match("2007-02-02 00:00:00",hpc2$NewDate),match("2007-02-02 23:59:00",hpc2$NewDate)), labels=c("Thu", "Fri", "Sat"))

dev.copy(png, file="plot4.png", width = 480, height = 480, units = "px")
dev.off()

