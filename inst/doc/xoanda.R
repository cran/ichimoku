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
#  #>                  time   open   high    low  close volume complete
#  #> 1 2010-11-01 21:00:00 80.275 81.504 80.225 80.501  22291     TRUE
#  #> 2 2010-11-02 21:00:00 80.504 80.956 80.460 80.617  13795     TRUE
#  #> 3 2010-11-03 21:00:00 80.632 81.585 80.594 81.069  22204     TRUE

## ----oandac, eval=FALSE-------------------------------------------------------
#  # For a live Palladium price chart:
#  oanda_chart("XPD_USD")

## ----oandacs, eval=FALSE------------------------------------------------------
#  # To access the data, simply assign the return value to an object:
#  cloud <- oanda_chart("XPD_USD")

## ----oandas, eval=FALSE-------------------------------------------------------
#  oanda_studio()

## ----archive, eval=FALSE------------------------------------------------------
#  # Supply the quoted file path / name, for example:
#  cloud <- archive("~/Downloads/SUGAR_USD_D_A.rda")
#  
#  # Or alternatively, choose the saved file interactively using a system dialog:
#  cloud <- archive()

## ----oandastream, eval=FALSE--------------------------------------------------
#  oanda_stream("UK10YB_GBP")
#  #> Streaming data... Press 'Esc' to return
#  #> type:PRICE  time:2021-10-01T16:59:51.377314414Z
#  #> bids: price:126.500  liquidity:10000   asks: price:126.540  liquidity:10000
#  #> closeoutBid:126.500  closeoutAsk:126.540  status:non-tradeable  tradeable:false  instrument:UK10YB_GBP

## ----oandaq, eval = FALSE-----------------------------------------------------
#  oanda_quote("USD_JPY")
#  #> USD_JPY 2021-10-02 14:40:44 open: 111.296  high: 111.489  low: 110.906  last: 111.051  %chg: 0.2206 M

## ----oandav, eval = FALSE-----------------------------------------------------
#  oanda_view()
#  Enter market [f]x [a]llfx [b]onds [c]ommodities [m]etals [s]tocks: c
#  #> Retrieving commodities.........
#  #> 2021-10-03 11:15:14 / M
#  #>               open    high     low    last    %chg
#  #> WHEAT_USD    7.166   7.484   7.139   7.484  4.4376
#  #> XCU_USD    4.09312 4.19604 4.04606 4.19368  2.4568
#  #> WTICO_USD   75.244  76.134  74.364  75.861  0.8200
#  #> CORN_USD     5.640   5.718   5.582   5.686  0.8156
#  #> BCO_USD     79.358  80.266  78.419  79.975  0.7775
#  #> TWIX_USD     665.0   671.4   661.4   664.9 -0.0150
#  #> SOYBN_USD   12.725  12.806  12.601  12.643 -0.6444
#  #> SUGAR_USD  0.19590 0.19670 0.19360 0.19410 -0.9188
#  #> NATGAS_USD   5.898   5.948   5.480   5.493 -6.8667

## ----oandai, eval=FALSE-------------------------------------------------------
#  oanda_instruments()

## ----ins, echo=FALSE----------------------------------------------------------
print(ichimoku:::x_oanda_instruments)

