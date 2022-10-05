# MechaCar_Statistical_Analysis

In this project we intend to perform statistical testing in R for MechaCar car company. Statistical tests provide data-based insight on the company performance and suggest additional testing for comparison of MechaCar company against its competition.

For the purpose of the analysis we would use the below datasets

- [MechaCar_mpg.csv](https://github.com/gopivasanth/MechaCar_Statistical_Analysis/blob/259784126404aec2c9fd1b42467794e4a521afa4/MechaCar_mpg.csv)
- [Suspension_Coil.csv](https://github.com/gopivasanth/MechaCar_Statistical_Analysis/blob/259784126404aec2c9fd1b42467794e4a521afa4/Suspension_Coil.csv)

## Linear Regression to Predict MPG

With multiple linear regression model we are identifying which of the following variables predict the MPG of MechaCar Prototypes
- vehicle weight
- spoiler angle
- ground clearance
- AWD 
- vehicle length  

#### Null hypothesis and alternative hypothesis for linear regression

With multiple linear regression model, we are establishing the following hypothesis:

**H0:**  The slope of the linear model is zero, or m = 0 (If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of 0).

**H1:**  The slope of the linear model is not zero, or m ≠ 0 (If there is significant linear relationship, each dependent value would not be determined by random chance and error. Therefore, our linear model would not be a flat line with a slope greater or lesser than 0).

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- To determine which variables, provide a non-random amount of variance to the mpg value we have to look at their individual  **p-value**. 
- If the p-value is below 0.05 is statistically unlikely to provide random amounts of variance to the linear model, meaning that those variables have a significant impact on mpg. 

![Results](https://github.com/gopivasanth/MechaCar_Statistical_Analysis/blob/d4d1396d0bcfb4e3fcb5ca0ae2e94f6d4b84c0d2/Results/linear_regression.png)

According to our results **ground clearance**  (p-value = 5.21 x 10-8),  **vehicle length**  (p-value = 2.60 x 10-12), as well as  **intercept**  (p-value = 5.08 x 10-8) provided a non-random amount of variance to the mpg values in the dataset. 

#### Is the slope of the linear model considered to be zero? Why or why not?

Based on our results p-value is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis. That indicates the slope of our linear model is NOT zero, meaning that there is  significant linear relationship between variables and mpg of MechaCar prototype. 

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

To determine if this linear model predict mpg of MechaCar prototypes effectively we need to take a look at its  **r-squared**  and  **p-value**. 

According to our results r-squared is 0.7149 and indicates a strong positive linear relationship, therefore we confirm that this linear model effectively predicts mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

**All Lots**

 According to the results the variance is 62.29 PSI, that is within requirements of not exceeding variance 100 PSI.

![Summary](https://github.com/gopivasanth/MechaCar_Statistical_Analysis/blob/7c8096e338516b58b7dbb4fb277f0fa8d0d25852/Results/suspensioncoil_overall%20summary.png)

**Individual Lots**

 According to the results, it is observed Lot 1 and Lot 2 meet the design specification with a variance is 0.97 and 7.46 PSI respectively, and it is within requirements of not exceeding variance 100 PSI. 
 
 - Lot 3 does not meet the design specification, because of its variance of 170.28 PSI and that exceed the requirements variance of 100 PSI.

![Lot_Summary](https://github.com/gopivasanth/MechaCar_Statistical_Analysis/blob/7c8096e338516b58b7dbb4fb277f0fa8d0d25852/Results/suspensioncoil_lot%20summary.png)


## T-Tests on Suspension Coils

Performing  **one-sample t-test**, to determine if there is a statistical difference between the means of a sample dataset (suspension coil data set) and a population dataset with a given mean of 1,500 PSI. With the t-test, we are establishing the following hypothesis:

**H0:**  There is no statistical difference between the suspension coil data set mean and its presumed population mean of 1,500 PSI.

**Ha:**  There is statistical difference between the suspension coil data set mean and its presumed population mean of 1,500 PSI.

In order to  **reject**  or  **fail to reject our null hypothesis**  we have to look at the  **p-value**  that determines if there is a statistical difference between the observed sample mean and its presumed population mean. According to the result p-value for all manufacturing lots is 0.06028, for lot 1 = 1, for lot 2 = 0.6072, and for lot 3 = 0.04168. 

In all cases p-value is above the assumed significance level of 0.05. Therefore, there is not enough evidence and  **we fail to reject the null hypothesis**, meaning that the two means not statistically different.

![Summary](https://github.com/gopivasanth/MechaCar_Statistical_Analysis/blob/11440b7bf85bff79d4827d644e7339a9b99a8315/Results/t-test.png)

## Study Design: MechaCar vs Competition

What metrics to test?

- Electric Vehicles (EV) are on the rise and customers are more cautious about pollution and car emissions. 
- While many customers still cannot afford or won’t invest in the electric vehicle, MechaCar can provide a good alternative. 

Based on that, I recommend testing for the following metrics to compare MechaCar vs competition: 
- a comparison of a single dependent variable **exhaust system emissions means** across a single independent variable  **transmission efficiency**  with multiple groups.

#### Null hypothesis vs Alternative hypothesis?

**H0:** The means of exhaust system emissions of all groups are equal.

**Ha:** At least one of the means of exhaust system emissions is different from all other groups.

To test the hypotheses, we use  **one-way ANOVA** test. ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups - In our case  **exhaust system emissions**  of different cars based on  **transmission efficiency**. 

If we reject the null hypothesis, we can conclude that at least one of the means of exhaust system emissions is different from all other groups.

#### What data is needed to run the statistical test?

In order to run this statistical test, we test on below parameters
-   vehicle ID
-   exhaust system emissions data
-   transmission efficiency data