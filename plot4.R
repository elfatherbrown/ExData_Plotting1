source("./downloadandpresent.R")
png(
  file = "plot4.png",
  bg = "white",
  width = 480,
  height = 480
)
rd <- d
rd$fulltime <- with(d, ymd_hms(paste(Date, Time)))
par(mar=c(5,5,4,2))
par(mfrow=c(2,2))
with(
  rd,
  plot(
    Global_active_power ~ fulltime,
    type = "l",
    ylab = "Global Active Power (kilowatts)",
    xlab = ""
  )
)

with(rd, 
     plot(Voltage ~ fulltime, 
          type = "l",
          ylab="Voltage",
          xlab="datetime"))
plot(
  rd$fulltime,
  rd$Sub_metering_1,
  col = "black",
  type = "l",
  xlab = "",
  ylab = "Energy sub metering"
)
points(rd$fulltime,
       rd$Sub_metering_1,
       col = "black",
       type = "l")
points(rd$fulltime,
       rd$Sub_metering_2,
       col = "red",
       type = "l")
points(rd$fulltime,
       rd$Sub_metering_3,
       col = "blue",
       type = "l")

with(rd, 
     plot(Voltage ~ fulltime, 
          type = "l",
          ylab="Global_reactive_power",
          xlab="datetime"))

dev.off()