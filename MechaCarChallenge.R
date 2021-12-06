library(dplyr)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_mpg) #generate multiple linear regression model
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_mpg)) #generate summary statistics

suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
library(tidyverse)
total_summary <- suspension %>% summarize(Mean_Psi=mean(PSI), Median_Psi=median(PSI), var_PSI=var(PSI), sd_PSI=sd(PSI), .groups = 'keep')
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_Psi=mean(PSI), Median_Psi=median(PSI), var_PSI=var(PSI), sd_PSI=sd(PSI), .groups = 'keep')

t.test(suspension$PSI, mu=1500)

t.test(suspension$PSI, mu=1500, subset= suspension$Manufacturing_Lot == "Lot1")
t.test(suspension$PSI, mu=1500, subset= suspension$Manufacturing_Lot == "Lot2")
t.test(suspension$PSI, mu=1500, subset= suspension$Manufacturing_Lot == "Lot3")

t.test(suspension$PSI, mu=1500, subset= Manufacturing_Lot == "Lot1")
