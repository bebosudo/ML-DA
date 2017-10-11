# "regression toward the mean" 

# From one generation to the next the heights moved closer to the average or regressed toward the mean.

# From the Galton study on hereditary height
# Sir Francis Galton 's parent/child height data
# from http://wienformulaer.math.csi.cuny.edu/UsingR/

# Load the library (UsingR) and data (galton) needed



# Explore graphically the relationship between parent/child heights


# Note that there are more observations for each point.
# Make the graph more informative on this respect (hint: jitter data; point size dependent on numerosity)


# Fit a LS line with "lm"
?formula

regrline <- lm(  ~ , galton)

# add the regression line to the plot with "abline".


# Accuracy of estimation is gauged by theoretical techniques and expressed in terms of "standard error." 
# Look at R summary on estimation.


# From the output of "summary" what is the slope of the regression line?
# What is the standard error of the slope?
# Plot the line that would result if there weren't the "regression to the mean" phenomenon


