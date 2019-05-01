# Periodic measurements of salinity and water flow were taken in North Carolina’s Pamlico Sound, re-
# sulting in the following data (x = water flow, y = salinity):

# (a) Read the data into R and produce a suitable graphical summary (with meaningful labels) of the
# relationship between water flow and salinity.
# (b) Write down an appropriate statistical model for examining the relationship, and fit the model in
# R. Use the regression output to determine the correlation coefficient between x and y.
# (c) Examine appropriate diagnostic plots, and comment on anything that is noteworthy or that may
# challenge the assumptions of the model.
# (d) Find a 99% confidence interval for the slope of the line. Comment on the usefulness or otherwise
# of the estimated slope and intercept.
# (e) Find a 95% prediction interval for the salinity when the water flow is 21. Explain its meaning.


x = c(23,24,26,25,30,24,23,22,22,24,25,22,22,22,24)
y = c(7.6,7.7,4.3,5.9,5.0,6.5,8.3,8.2,13.2,12.6,10.4,10.8,13.1,12.3,10.4)
print(length(x))
print(length(y))

df = data.frame(x,y)
