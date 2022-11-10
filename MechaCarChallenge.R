# Deliverable 1
library(dplyr)
# import csv as a dataframe
MechaCar_mpg <- read.csv(file='C:/Users/lkand/Desktop/R_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)
# linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)
# summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

# Deliverable 2 
# import csv 
Suspension_Coil <- read.csv(file='C:/Users/lkand/Desktop/R_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#stat summary using summarize()
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
#stat summary using group_by()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')

# Deliverable 3 
# t-test for all the lots
t.test(Suspension_Coil$PSI,mu=1500)
# t-test for lot 1,2,3
lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)