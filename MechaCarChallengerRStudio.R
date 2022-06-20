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

