
plot1 <- function(file) {
  
  pw <- read.table(file, header=T, sep=";")
  pw$Date <- as.Date(pw$Date, format="%d/%m/%Y")
  
  df <- pw[(pw$Date=="2007-02-01") | (pw$Date=="2007-02-02"),]
  
  df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
  
  hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
  
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}