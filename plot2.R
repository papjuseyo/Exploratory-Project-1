# Plot 2

# Importing data

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

main.data <- hpc[((hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007")),]

gap.vec <- as.vector(main.data$Global_active_power)
gap <- as.numeric(gap.vec)

# Creating the plot

png(file = "plot2.png", width = 480, height = 480, bg = "white")

plot(1:length(gap), gap, type = "l", xaxt = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
axis(1, at = c(0,1441,2880), labels = c("Thu","Fri","Sat"))

dev.off()