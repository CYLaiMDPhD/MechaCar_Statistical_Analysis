# MechaCar_Statistical_Analysis

*Note: This repository was created to fulfill an assignment (Module 15 Challenge) for the UC Berkeley Data Analytics and Visualization Bootcamp. The analysis, content, and format of this report were based on the grading rubric.*

*Module exercises included:*
- *Installation and introduction to R and RStudio*
- *Reading and writing data in R*
- *R Functions*
- *Introduction and use of the Tidyverse Package*
  - *transforming/mutate function*
  - *grouping data*
  - *reshaping data*
- *Plotting charts using ggplot*
  - *bar, line, scatter, box plots*
  - *heatmaps, layers*
- *Review of statitics, hypothesis testing, and applying statistical tests*
  - *T-tests*
  - *ANOVA*
  - *Single and multiple linear regression*
  - *A/B Testing*

*The report below is based on analyses and code in MechaCarChallenge.R*


## OVERVIEW
A fictional company called AutosRUs is experiencing production issues with their new prototype, the MechaCar. This report examines some available data from the manufacturing team in order to provide insight into production delays and proposes a study to compare the MechaCar prototypes against other competitors' cars. 

**Data Source:**
Fictional data files used were provided as part of course materials:
- MechaCar_mpg.csv
- Suspension_Coil.csv

---
## Linear Regression to Predict MPG
**(Deliverable 1)**


Fifty prototypes of the MechaCar have been produced so far. A basic performance measure (mpg) was determined for each prototype and linear regression was performed against five independent variables: vehicle length, vehicle width, spoiler angle, ground clearance, and AWD. Figure 1 below shows the results of this statistical analysis. 

**Figure 1: Results of Multiple Linear Regression for Prototype MPGs**

![Del_1.png](/Images/Del_1.png)

Based on the multiple linear regression analysis above, two factors seem to contribute significantly to the mpg, vehicle length and ground clearance. P values for these two factors were 2.6^(-12) and 5.2^(-08) respectively. The slopes for the models are non-zero (6.3 for vehicle length and 3.5 for ground clearance), indicating a positive relationship. This model predicts the mpg well based on vehicle length and ground clearance as the p values for these factors are so small and the overall r squared value is above 0.7.


---
## Summary Statistics on Suspension Coils
**(Deliverable 2)**


The performance of three different lots of suspension coils were analyzed. Figure 2 below provides a statistical summary of the analysis. Taken as a whole, the variance of all lots produced are within the design specifications of less than 100. Mean and median for all lots are 1498.78 and 1500 respectively.

**Figure 2: Performance (PSI) of Suspension Coils - All Lots**

![Del_2-1.png](/Images/Del_2-1.png)


Figure 3 below shows statistical summaries of the performance of suspension coils by lot. Lot 3 has a high variance (170), well over the design specifications and should not be used in production. Lots 1 and 2 both had very low variance in comparison, indicting consistency in manufacturing. Use of lot 3 may increase risk of failure in the prototypes, leading to production delays.

**Figure 3: Performance (PSI) of Suspension Coils - Individual Lots**

![Del_2-2.png](/Images/Del_2-2.png)


---
## T-Tests on Suspension Coils
**(Deliverable 3)**

The performance of the current production set of suspension coils was evaluated against a historical population mean of 1500 PSI per coil. Figure 4 below displays the results for all lots as a whole while figures 5 - 7 show the results for each lot. Taken together, all three lots did not show a statistically significant difference from the population mean of 1500 (figure 4). However, when evaluated separately, lot 3 did show a statistically significant difference with a p-value of 0.04168 (figure 7). Along with the results above, these results indicate that there is higher variability in lot 3, which contributed to the overall population variability.



**Figure 4: T-Test for All Lots of Suspension Coils**

![Del_3-1.png](/Images/Del_3-1.png)

**Figure 5: T-Test for Lot 1 Suspension Coils**

![Del_3-2.png](/Images/Del_3-2.png)

**Figure 6: T-Test for Lot 2 Suspension Coils**

![Del_3-3.png](/Images/Del_3-3.png)

**Figure 7: T-Test for Lot 3 Suspension Coils**

![Del_3-4.png](/Images/Del_3-4.png)


---
## Study Design: MechaCar vs Competition

Several tests can be performed the evaluate the performance of MechaCar prototypes against competitor vehicles. As MechaCar is designed to be a practical sedan, important consumer measures should include fuel efficiency and maintenance costs. Table 1 below summarizes the statistical tests and data needed to evaluate these metrics in different ways.

**Table 1: Additional MechaCar Studies**

|Metric for Testing| Fuel Efficiency - Highway | Fuel Efficiency - City | Maintenance Costs |
|---|---|---|---|
|Null Hypothesis|The MechaCar is no more fuel efficient than all cars in the same class.|The MechaCar is no more fuel efficient than the leading competitor car in the same class.|The MechaCar is not more expensive to maintain in the 1st 5 years compared to the top 3 competitor vehicles in the same class.|
|Alternate Hypothesis|The MechaCar is more fuel efficient than all cars in the same class by 10 mpg.|The MechaCar is more fuel efficient than the leading competitor car in the same class by 5 mpg.| The MechaCar costs less to maintain than the top 3 competitor vehicles in the first 5 years.|
|Statistical Test|One Sample T-Test against population|Two-Sample Paired T-Test|ANOVA|
|Data Needed|Highway mpg for MechCar and all competitor cars in the same class.|City mpg for MechCar and top competitor car in the same class.|Average maintanence costs of top 3 competitor vehicles in the 1st 5 years and projected maintainence costs of the MechaCar over the 1st 5 years. MechaCar projections can be made based on previous cars produced with similar parts and technology.|


