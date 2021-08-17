## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 5
)

## ----setup--------------------------------------------------------------------
library(ichimoku)

## ----loaddatanotrun, eval = FALSE---------------------------------------------
#  # ichimoku is designed to interface well with other packages, for example:
#  cloud <- ichimoku(quantmod::getSymbols("C"))

## ----viewdata-----------------------------------------------------------------
# Simulated OHLC price data is assigned to data frame 'TKR':
TKR <- sample_ohlc_data
head(TKR)

## ----ichimoku-----------------------------------------------------------------
cloud <- ichimoku(TKR)

print(cloud[100:110,], plot = FALSE, digits = 4)

## ----ichimokunotrun, eval = FALSE---------------------------------------------
#  # to view chart as well as data, simply issue:
#  cloud

## ----holidays, eval = FALSE---------------------------------------------------
#  # Holidays can be specified directly via a vector of dates:
#  ichimoku(TKR, holidays = c("2020-01-13", "2020-02-11", "2020-02-24"))
#  
#  # Or via a functions that returns a vector of dates (e.g. from the 'timeDate' package):
#  ichimoku(TKR, holidays = timeDate::holidayLONDON())
#  ichimoku(TKR, holidays = timeDate::holidayNYSE())
#  
#  # For a market that trades 24/7:
#  ichimoku(TKR, noholidays = TRUE)
#  

## ----plot---------------------------------------------------------------------
plot(cloud)

## ----plotnotrun, eval = FALSE-------------------------------------------------
#  # Example code for incrementally updating ggplot2 layers:
#  plot <- plot(cloud)
#  plot + ggplot2::theme_classic()

## ----iplotnotrun, eval = FALSE------------------------------------------------
#  # For a plotly interactive plot:
#  plotly::ggplotly(plot)

## ----plot2--------------------------------------------------------------------
plot(cloud, window = "2020-05-01/2020-11-02", ticker = "TKR Co.", message = "一目均衡表", theme = "dark")

## ----pipe, eval = FALSE-------------------------------------------------------
#  # Using R 4.1's new pipe operator:
#  quantmod::getSymbols("C") |> ichimoku() |> plot()
#  # Or equally using the 'magrittr' pipe:
#  quantmod::getSymbols("C") %>% ichimoku() %>% plot()

