library(dplyr)
MechaCarDf <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
summary(lm( mpg ~ vehicle_length+ vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarDf))

SuspensionCoilTable <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
total_summary <- SuspensionCoilTable %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), PSI_Variance = var(PSI), PSI_Std_Dev = sd(PSI), .groups= 'keep')
lot_summary <- SuspensionCoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), Median_PSI = median(PSI), PSI_Variance = var(PSI), PSI_Std_Dev = sd(PSI), .groups= 'keep')

