# Importing libraries and packages
library(dplyr)
library(tidyverse)

# Deliverable 1
# Import data file
MC_mpg <- read.csv("Resources/MechaCar_mpg.csv")

# Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MC_mpg)

# Summary of linear regression analysis
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MC_mpg))


# Deliverable 2
# Import data file
Suspension <- read.csv("Resources/Suspension_Coil.csv")

# Total Summary
total_summary <- Suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI), .groups = "keep")
View(total_summary)

# Lot Summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI), .groups = "keep")
View(lot_summary)


# Deliverable 3
#T-test of total population to mean of 1500
t.test(Suspension$PSI, mu=1500)

# Create subsets for each lot
lot1 <- subset(Suspension, Manufacturing_Lot == "Lot1")
lot2 <- subset(Suspension, Manufacturing_Lot == "Lot2")
lot3 <- subset(Suspension, Manufacturing_Lot == "Lot3")

# T Tests of each lot to total population
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

