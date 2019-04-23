# Exploring gapminder data and demonstrating reading in data
# By Nicholas Tierney, to demonstrate how to read in data
# 2019-04-24

# Libraries --------------------------------------------------------------------
library(readr)

# reading in the data ----------------------------------------------------------
# First we read the data in using `read_csv`.

gapminder <- read_csv("data/gapminder.csv")

# Now we can look at the lifespan
summary(gapminder$lifeExp)
