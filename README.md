# MechaCar_Statistical_Analysis

A foray into R and Statistics

## Linear Regression to Predict MPG

# Linear Regression Model
![LR1](https://user-images.githubusercontent.com/67844710/200981554-9645fcbb-406b-402e-8450-d115b89368db.png)

# Summary Stats
![LR2Summary](https://user-images.githubusercontent.com/67844710/200981562-51f373c6-84a7-434f-aa33-d30d53c34721.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
mpg, vehicle length, and ground clearance all provided a nonrandom statistically significant amount of variance.

Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero, because the coefficient would have to equal 0, and while vehicle weight comes very close, none of them are actually zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
With an r-squared of 0.7149 which indicates a strong correlation exists, this linear model can be considered an effective predictor of MechaCar prototypes mpg.

## Summary Statistics on Suspension Coils

#Total Summary DataFrame
![Total Summary DF](https://user-images.githubusercontent.com/67844710/200986095-3e97abc6-059c-4412-af51-d7b362f4c382.png)

Lot Summary DataFrame
![Lot Summary DF](https://user-images.githubusercontent.com/67844710/200986104-80087e2b-9de9-4259-bbf8-df5c39dde83f.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

At a variance of 62.29 for all manufacturing lots in total, the design specifications of being under 100 psi are met. However a large reason for even that great a variance is due to Lot3, which at 170.28 exceeds the specifications, while lots 1 and 2 both have less than 10 psi variance and are well within bound.

## T-Tests on Suspension Coils
All Lots
![T All Lots](https://user-images.githubusercontent.com/67844710/200996048-c46b238b-30f7-4e5f-80c6-df0fc70cf56e.png)
Lot 1
![T Lot 1](https://user-images.githubusercontent.com/67844710/200996061-e0bab9ce-2e99-411f-9f8f-6440e8777b67.png)
Lot 2
![T Lot 2](https://user-images.githubusercontent.com/67844710/200996067-b02b4e89-5ae3-4389-be0e-267d09a60793.png)
Lot 3
![T Lot 3](https://user-images.githubusercontent.com/67844710/200996074-5cdc240e-1349-40e6-a455-d79cc0755fa7.png)

p-value = .06028 for all lots which is greater than 0.05. This means it is not statistically significant from the normal distribution and normality can be assumed. The mean of 1500 falls within the 95% confidence interval which ranges between 1499.719 and 1500.281. We see that lots 1 and 2 also are not statistically significantly different from normal distribution however lot 3 is with a p-value of 0.04168 which is less than 0.05. Lot 3's production cycle should be checked.


## Study Design: MechaCar vs Competition

An additional statistical test that could be performed is checking MechaCar's price value based on safety. We could scientifically try to see if MechaCar is over/under or correctly priced relative to it's competitors in the market based on safety ratings. We would need to have data on MechaCar and it's competitors safety ratings, as well as average purchase cost. So the null hypothesis would be that MechaCar is valued correctly based on it's safety rating, and the alternative hypothesis would be that MechaCar is not valued correctly based on safety rating. We could set up T-tests to find significance. They would help us either confirm or reject the null hypothesis based on the p-values we get.
