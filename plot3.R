# Plot 3

# Importing data

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

main.data <- hpc[((hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007")),]

sm1.vec <- as.vector(main.data$Sub_metering_1)
sm1 <- as.numeric(sm1.vec)

sm2.vec <- as.vector(main.data$Sub_metering_2)
sm2 <- as.numeric(sm2.vec)

sm3.vec <- as.vector(main.data$Sub_metering_3)
sm3 <- as.numeric(sm3.vec)

# Creating the plot

png(file="plot4.png", width = 480, height = 480, bg = "white")

plot(1:length(sm1), sm1, type = "l", xaxt = "n", xlab = "", ylab = "Energy sub metering")
axis(1, at = c(0,1441,2880), labels = c("Thu","Fri","Sat"))

lines(sm2, col = "orangered3")
lines(sm3, col = "mediumblue")

legend("topright", lty = 1, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","orangered3","mediumblue"))

dev.off()