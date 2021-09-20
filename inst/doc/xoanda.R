## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 5
)


## ----oandaswitch--------------------------------------------------------------
library(ichimoku)

oanda_switch()

## ----oanda, eval=FALSE--------------------------------------------------------
#  oanda("USD_JPY", count = 3, from = "2010-11-01", price = "B")

## ----oanda2, echo=FALSE-------------------------------------------------------
data.frame(
        time = c("2010-11-01 21:00:00",
                 "2010-11-02 21:00:00","2010-11-03 21:00:00"),
        open = c(80.275, 80.504, 80.632),
        high = c(81.504, 80.956, 81.585),
         low = c(80.225, 80.46, 80.594),
       close = c(80.501, 80.617, 81.069),
      volume = c(22291L, 13795L, 22204L),
    complete = c(TRUE, TRUE, TRUE)
)

## ----oandac, eval=FALSE-------------------------------------------------------
#  # For a live Palladium price chart:
#  oanda_chart("XPD_USD")

## ----oandacs, eval=FALSE------------------------------------------------------
#  # To access the data, simply assign the return value to an object:
#  cloud <- oanda_chart("XPD_USD")

## ----oandas, eval=FALSE-------------------------------------------------------
#  oanda_studio()

## ----oandai, eval=FALSE-------------------------------------------------------
#  oanda_instruments()

## ----ins, echo=FALSE----------------------------------------------------------
print(ichimoku:::x_oanda_instruments)

