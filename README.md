# MechaCar_Statistical_Analysis
Using R to perform statistical analysis on car manufacturing data. 

## Linear Regression to Predict MPG

Using vehicle performance data on the MechaCar prototype, we can see which physical features most affect the car's mpg. 

![Linear Regression for MPG]("LinRegforMPG.PNG")

The residuals of the linear regression show how the actual data differs from the predicted amounts of the regression. The median, or MPG amount that falls in the middle of the data set was very close (-0.0692) to the linear regression. Meanwhile, the min and max MPG almost 20 miles different from predicted values: -19.4701 and 18.5849 respectively.

Reviewing the last column of the correlations will tell us the p-value of the variable, which shows statistical significance when the value is under 0.05. 

1. Features that showed a non-random correlation with mpg:

* vehicle_length 
    * p-value of 2.60e-12 (0.0000000000026)
* ground_clearance 
    * p-valule of 5.21e-08 (0.0000000521)
* vehicle-weight showed less signifcant correllation under 0.1
    * p-value of 0.0776

2. The slope of the linear regression is non-zero, meaning changes to our independent variables of vehicle length, weight, spoiler angle, ground clearance and AWD are estimated to result in positive or negative changes in the MPG. 

3. The linear model does effectively predict the car's MPG, shown by the p-value 5.35e-11 corresponding to the F-statistic. This value represents the number 0.0000000000535, which is lower than 0.05 and shows that this model is more useful than a model with no data inputs. 




