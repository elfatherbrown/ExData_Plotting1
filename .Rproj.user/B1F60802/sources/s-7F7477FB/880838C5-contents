source("./downloadandpresent.R")
png(
  file = "plot3.png",
  bg = "white",
  width = 480,
  height = 480
)
rd <- d
rd$fulltime <- with(d, ymd_hms(paste(Date, Time)))
rd <- rd %>% select(Date, Time, fulltime, contains("meter"))

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
legend(
  "topright",
  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  lty = c(1, 1, 1),
  col = c("black", "red", "blue")
)

dev.off()