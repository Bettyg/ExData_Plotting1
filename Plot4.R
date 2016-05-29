
R version 3.2.4 Revised (2016-03-16 r70336) -- "Very Secure Dishes"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
> house_a_data <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])
> house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
> house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
> hist(as.numeric(house_a_data$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
> plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
> 
> plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
> with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})
> 
> lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
> lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
> legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
Error in strwidth(legend, units = "user", cex = cex, font = text.font) : 
  plot.new has not been called yet
> par(mfrow=c(2,2))
> plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l")
> plot(house_a_data$Voltage ~ house_a_data$DateTime, type="l")
> 
> with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l")})
> lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
> lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
> 
> plot(house_a_data$Global_reactive_power ~ house_a_data$DateTime, type="l")
> 
