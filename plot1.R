# Plot 1

# Importing data

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

main.data <- hpc[((hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007")),]

gap.vec <- as.vector(main.data$Global_active_power)
gap <- as.numeric(gap.vec)

# Creating the plot

png(file = "plot1.png", width = 480, height = 480, bg = "white")

hist(gap, yaxt = "n", freq = TRUE, col = "orangered3", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
axis(2, at = c(0,200,400,600,800,1000,1200))

dev.off()
