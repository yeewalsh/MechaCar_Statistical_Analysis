install.packages("tidyverse")

mechacar_mpg <- read.csv(file="MechaCar_mpg.csv")

# perform linear regression across all car variables
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# review the summary statistics on our MPG linear regression
summary(reg)

suspension_coil <- read.csv(file="Suspension_Coil.csv")
head(suspension_coil)

# Review suspension coil’s PSI continuous variable across all manufacturing lots
total_summary <- summarize(suspension_coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# Show PSI metrics for each lot: mean, median, variance, and standard deviation.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

# Perform a t-test on PSI across all manufacturing lots against the population mean of 1,500
t.test(suspension_coil$PSI, mu=mean(suspension_coil$PSI))

# Perform a t-test on PSI for each manufacturing lot individually against the population mean of 1,500
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot1', PSI), mu=mean(suspension_coil$PSI))
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot2', PSI), mu=mean(suspension_coil$PSI))
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot3', PSI), mu=mean(suspension_coil$PSI))


