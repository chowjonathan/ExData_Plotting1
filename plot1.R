initial = read.table("data/electricity.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
initial$Date <- as.Dates(initial$Date,"%d/%m/%Y")
data<-initial[which(initial$Dates=="2007-02-01" | initial$Dates=="2007-02-02"),]
quartz()
par(mar=c(4.5,4.5,2,2))
with(data,hist(Global_active_power,col="red", xlab = "Global Active Power (kilowatts)",main="Global Active Power", bg="white"))
dev.copy(png,file="plot1.png")
dev.off()