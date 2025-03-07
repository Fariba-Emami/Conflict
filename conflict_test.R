# Load necessary libraries
install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)

# Load the mtcars dataset
print("Arpad has changed this file.")
data("mtcars")

# Data manipulation: Add a factor column for cylinders
mtcars <- mtcars %>%
    mutate(cyl_factor = factor(cyl, levels = c(4, 6, 8), labels = c("4 Cyl", "6 Cyl", "8 Cyl")))

# Summarize the dataset: Calculate mean MPG and HP by cylinder category
summary_table <- mtcars %>%
    group_by(cyl_factor) %>%
    summarise(avg_mpg = mean(mpg, na.rm = TRUE), avg_hp = mean(hp, na.rm = TRUE))

print(summary_table)

print("...but before plotting, let's see some text from Arpad...")

print("Lorem ipsum...")

list <- c("Belfast", "Bonn", "Bucharest")

print(list)

# Plot

ggplot(mtcars, aes(x = cyl_factor, y = mpg, fill = cyl_factor)) +
    geom_boxplot(alpha = 0.7) +
    labs(title = "MPG Distribution by Cylinder Count",
         x = "Cylinders",
         y = "Miles Per Gallon (MPG)") +
    theme_minimal()


print("this is the latest version of the code")



