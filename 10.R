install.packages("ggplot2")
# Load the ggplot2 library
library(ggplot2)
# Load the mtcars dataset
data(mtcars)
# Select four continuous variables from the mtcars dataset
selected_variables <- c("mpg", "disp", "hp", "qsec")
# Create a data frame with the selected variables
selected_data <- mtcars[, selected_variables]
# Reshape data to long format
selected_data_long <- stack(selected_data)
# Plot with lines and points for different variables with different colors
sr<-ggplot(selected_data_long, aes(x = ind, y = values, group = ind, color = ind)) +
  geom_line() +
  geom_point(size = 3) +
  labs(title = "Line and Point Plot for Different Variables",
       x = "Variables",
       y = "Values") +
  theme_minimal()
print(sr)