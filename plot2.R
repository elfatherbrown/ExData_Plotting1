source("./downloadandpresent.R")
png(
  file = "plot2.png",
  bg = "white",
  width = 480,
  height = 480
) 
rd <- d
rd$fulltime <- with(d, ymd_hms(paste(Date, Time)))
with(
  rd,
  plot(
    Global_active_power ~ fulltime,
    type = "l",
    ylab = "Global Active Power (kilowatts)",
    xlab = ""
  )
)
dev.off()