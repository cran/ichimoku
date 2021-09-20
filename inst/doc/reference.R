## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 5
)

## ----setup--------------------------------------------------------------------
library(ichimoku)

## ----oandadatanotrun, eval = FALSE--------------------------------------------
#  # ichimoku can create clouds directly from OANDA data, for example:
#  cloud <- ichimoku(oanda("USD_JPY"))

## ----pipe, eval = FALSE-------------------------------------------------------
#  # Using R 4.1's new pipe operator:
#  quantmod::getSymbols("C") |> ichimoku() |> plot()
#  # Or equally using the 'magrittr' pipe:
#  quantmod::getSymbols("C") %>% ichimoku() %>% plot()

## ----viewdata-----------------------------------------------------------------
# Sample OHLC price data is assigned to data frame 'TKR':
TKR <- sample_ohlc_data
head(TKR)

## ----ichimoku-----------------------------------------------------------------
cloud <- ichimoku(TKR)

print(cloud[100:110,], plot = FALSE, digits = 4)

## ----ichimokunotrun, eval = FALSE---------------------------------------------
#  # to view chart as well as data, simply issue:
#  cloud

## ----ichimokupreserve---------------------------------------------------------
kumo <- ichimoku(TKR, keep.data = TRUE)

print(kumo[100,], plot = FALSE, digits = 4)

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

## ----plot2--------------------------------------------------------------------
plot(cloud, window = "2020-05/", ticker = "一目均衡表", subtitle = "Sample Data Series")

## ----plotr, eval=FALSE--------------------------------------------------------
#  # To plot an R-type oscillator:
#  plot(cloud, type = "r")

## ----plots--------------------------------------------------------------------
plot(cloud, window = "2020-04-01/2020-12-01", theme = "solarized", type = "s")

## ----plotbar------------------------------------------------------------------
plot(kumo, window = "2020-04/2020-11", theme = "mono", type = "bar", custom = "volume")

## ----iplot, eval=FALSE--------------------------------------------------------
#  # For an interactive plot:
#  iplot(cloud)

