## ----library-------------------------------------------------------------
library(tidyverse)
library(broom)


## ----functions-----------------------------------------------------------
# A function to scale input to 0-1
scale_01 <- function(x){
  (x - min(x, na.rm = TRUE)) / diff(range(x, na.rm = TRUE))
}

## ----data-read-in---------------------------------------------------------
gapminder <- read_csv("data/gapminder.csv")

## ----hist-life-exp-------------------------------------------------------
hist(gapminder$lifeExp)


## ----example-cache-------------------------------------------------------
hist(gapminder$gdpPercap)


## ----example-lm----------------------------------------------------------
fit <- lm(lifeExp ~ year, data = gapminder)
fit


## ----coef-table----------------------------------------------------------
fit_coef <- tidy(fit)
knitr::kable(fit_coef,
             caption = "A table of the coefficients")
year_slope <- round(fit_coef$estimate[2], 3)

## ----table-coef----------------------------------------------------------
knitr::kable(fit_coef)

