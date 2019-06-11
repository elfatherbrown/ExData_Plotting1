source("./downloadandpresent.R")
png(file="plot1.png",bg="white",width = 480,height = 480)
hist(d$Global_active_power,
     xlab = "Global Active Power (kilowatts)", 
     col =  "red",
     main = "Global Active Power"
)
dev.off()