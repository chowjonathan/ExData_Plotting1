initial = read.table("data/electricity.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
initial$Date <- as.Dates(initial$Date,"%d/%m/%Y")
data<-initial[which(initial$Dates=="2007-02-01" | initial$Dates=="2007-02-02"),]
times <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
quartz()
par(mar=c(4.5,4.5,2,2))
plot(times,data$Global_active_power,type='l',ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
dev.off()