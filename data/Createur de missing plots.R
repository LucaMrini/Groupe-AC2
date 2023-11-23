library(visdat)

# Calculate the percentage of missing values in each column
missing_percentage <- colMeans(is.na(data1))
# Filter columns to plot (exclude columns with 0% missing values)
cols_to_plot <- names(missing_percentage[missing_percentage > 0 & missing_percentage < 1])
# Create a plot for columns with missing values
plot_missing(data1[, cols_to_plot])

