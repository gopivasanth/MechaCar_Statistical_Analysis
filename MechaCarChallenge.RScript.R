#load packages
install.packages("tidyverse")
install.packages("dplyr")
library(dplyr)

### Deliverable 1 ###
#Import and read the csv file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#linear regression for all variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) 

#p-value and r-squared  for all variables
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

### Deliverable 2 ###
#Import and read the csv file
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Create total summary df
total_summary <- summarize(SuspensionCoil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create lot summary df, using group_by() & summarize()
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

###  Deliverable 3 ###
#t-test across all manufacturing lots against the population mean = 1500 PSI
?t.test()

sample_SuspensionCoil <- SuspensionCoil %>% sample_n(50) 
t.test(log10(sample_SuspensionCoil$PSI),mu=mean(log10(SuspensionCoil$PSI))) 

SuspensionCoil_Lot1 <- SuspensionCoil %>% filter(Manufacturing_Lot=='Lot1')
SuspensionCoil_Lot2 <- SuspensionCoil %>% filter(Manufacturing_Lot=='Lot2')
SuspensionCoil_Lot3 <- SuspensionCoil %>% filter(Manufacturing_Lot=='Lot3')

t.test(log10(SuspensionCoil_Lot1$PSI),mu=mean(log10(SuspensionCoil$PSI))) 
t.test(log10(SuspensionCoil_Lot2$PSI),mu=mean(log10(SuspensionCoil$PSI))) 
t.test(log10(SuspensionCoil_Lot3$PSI),mu=mean(log10(SuspensionCoil$PSI)))