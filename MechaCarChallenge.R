library(dplyr)

# Deliverable 1
# Read in MPG data
MechaCarDf <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
# Perform a linear regression module 
mecha_lm <-lm( mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarDf)
# Determine the p-value and r-squared of the linear regression module.
summary(mecha_lm)

# Deliverable 2
# Read in Suspension Coil data
SuspensionCoilTable <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
# Create a total summary
total_summary <- SuspensionCoilTable %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), PSI_Variance = var(PSI), PSI_Std_Dev = sd(PSI))
# Create a lot summary
lot_summary <- SuspensionCoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), PSI_Variance = var(PSI), PSI_Std_Dev = sd(PSI), .groups= 'keep')

# Deliverable 3
# Perform t-test across all lots
t.test(SuspensionCoilTable$PSI,mu=1500)
# Perform t-test on Lot 1
t.test(subset(SuspensionCoilTable,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Perform t-test on Lot 2
t.test(subset(SuspensionCoilTable,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Perform t-test on Lot 3
t.test(subset(SuspensionCoilTable,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

