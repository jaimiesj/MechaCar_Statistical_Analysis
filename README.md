# MechaCar Statistical Analysis
Statistical Analysis utilzing R

## Linear Regression to Predict MPG
<img width="397" alt="linear regression" src="https://user-images.githubusercontent.com/88955412/144792383-bbda6d07-4e50-425a-a44c-f161e0ebace8.png">
<img width="306" alt="summary of linear regression" src="https://user-images.githubusercontent.com/88955412/144792394-e17bd9f9-b546-4d14-af8e-18a864790819.png">

- Ground clearance and vehicle length provided non-random amount of variance to the mpg values in the dataset (p values were less than 0.001)
- The slope is not considered to be zero as the R-squared values is 0.7149, showing a strong correlation, in this case positive
- This model predicts MPG of MechaCar prototypes effectively due to the strong correlation

## Summary Statistics on Suspension Coils
<img width="233" alt="total summary" src="https://user-images.githubusercontent.com/88955412/144793709-4294c2e4-0865-4ae3-97fe-a6a40fa88e00.png">
<img width="233" alt="lot summary" src="https://user-images.githubusercontent.com/88955412/144793718-16671959-6762-4141-b20a-299a0d64ca5f.png">

-In total, the variance for the suspension coils doesn't exceed 100 pounds per square inch (total variance is 62.3). However, lot to lot, Lot 1 and Lot 2 meet those requirements, while Lot 3 does not (Lot 3 variance is 170.3)

## T-Tests on Suspension Coils
<img width="215" alt="overall t test" src="https://user-images.githubusercontent.com/88955412/144796647-2dc2fc20-200f-48ec-bb44-ccc6c4cf4551.png">
<img width="312" alt="subset t tests" src="https://user-images.githubusercontent.com/88955412/144796654-64de33ae-1da6-479a-9a2d-100266185c4e.png">

-Overall, the mean PSI of all manufacturing lots was not significant different from the population mean of 1500 PSI. Unfortunately, I was unable to use the subset function correctly to determine the statistical difference between lots.

## Study Design: MechaCar vs Competition
-Metrics to test: highway vs city fuel efficiency, MPG, number of cylinders
-The null hypothesis would be that was no difference between MechaCar and its competition, in regards to these metrics of interest; the alternative hypothesis would be that there was a difference bewteen MechaCar and its competition in regards to these metrics of interest
-If there are multiple competetors, I would run an ANOVA to accomodate for the various means
-In order to run this test, I would need the means of these metrics
