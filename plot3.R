##plot3
plot(hpc2$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering", xlab="", col="black")
lines(hpc2$Sub_metering_2, col="red")
lines(hpc2$Sub_metering_3, col="blue")
axis(1, at=c(match("2007-01-02 00:00:00",hpc2$NewDate),match("2007-02-02 00:00:00",hpc2$NewDate),match("2007-02-02 23:59:00",hpc2$NewDate)), labels=c("Thu", "Fri", "Sat"))
# add legend
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), title="", lwd=1, x.intersp=.01, y.intersp=.75, cex=.75)

dev.copy(png, file="plot3.png", width = 480, height = 480, units = "px")
dev.off()
