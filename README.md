# MechaCar_Statistical_Analysis-

## Purpose

## Linear Regression to Predict MPG

![Image of Linear Regression](https://github.com/josem279/MechaCar_Statistical_Analysis-/blob/main/Images/MechaCarDF_Summary_Stats.PNG)

Using the summary output above, we can answer the following questions regarding MPG of the MechaCar prototypes:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    When looking at the linear regression output above, one can see that the variables that provided a non-random amount of variance to the mpg values in the dataset are the vehicle length and ground clearance. The Pr(>|t|) values for vehicle length and ground clearance are approximately 5.08e-08 and 5.21e-08 respectively. Additionally, since the Pr(>|t|) value for our intercept, mpg, is not significantly significant then it means that there are no variables that contribute to the variation in mpg efficiency.

2. Is the slope of the linear model considered to be zero? Why or why not?

    The slope for this linear model is not considered to be zero. This is easily identified by looking at our p-value of 5.35e-11, which is much smaller than the assumed significance level of 0.05%. Since the p-value is smaller than the significance level we can reject the null hypothesis which in turn means that the slope of our linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
    This linear model is able to predict the mpg of MechaCar prototypes quite effectively. Again looking at the summary output, the r-squared coefficient is ~0.71, meaning that we have a moderate level of strength in correlation between the data examined and its effects on mpg. In other words about 71% of the variance in the dependent variable, mpg, is explained by the other variables that we provided (vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive).

## Summary Statistics on Suspension Coils

![total_summary image](https://github.com/josem279/MechaCar_Statistical_Analysis-/blob/main/Images/total_summary_image.PNG)

![lot_summary image](https://github.com/josem279/MechaCar_Statistical_Analysis-/blob/main/Images/lot_summary_image.PNG)


Using the total_summary and lot_summary dataframes shown above, we can answer the following question:

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

    Based on the summary output, we can see that the MechaCar suspension coils do not exceed a variance of 100 PSI when grouping all lots as a total. However, when we look at the lots separately it appears as though one lot, lot 3, has a PSI variance that is greater than the specified 100 pounds per square inch variance. These two results stem from the fact that lots 1 and 2 have very small variances from that of the total population, meaning that they are good representatives of the whole population and adjust some of the skewness that exists in lot 3. Thus when the populations are not grouped by lot number, their PSI variance is averaged down. When however, lot 3 is examined separately we can see just how much larger the variance is for this subset of the population (about 220 PSI). Based on this information, te data tells us that as a whole MechaCars does meet PSI design specs but when it is broken down by lots, only the vehicles in lots 1 and 2 meet the specifications while lot 3 does not.