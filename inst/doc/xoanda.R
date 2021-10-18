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
#  #> USD_JPY 2021-10-05 16:29:44 open: 110.931  high: 111.564  low: 110.871  last: 111.398  %chg: 0.421 M

## ----oandav, eval = FALSE-----------------------------------------------------
#  oanda_view()
#  Enter market [a]llfx [b]onds [c]ommodities [f]x [m]etals [s]tocks: c
#  #> Retrieving commodities [.........]
#  #> 2021-10-13 23:42:58 / M
#  #>               open    high     low    last    %chg
#  #> TWIX_USD     654.0   658.4   644.6   657.6  0.5505
#  #> WTICO_USD   80.614  80.819  80.589  80.779  0.2047
#  #> XCU_USD    4.47846 4.49068 4.47821 4.48719  0.1949
#  #> BCO_USD     83.871  83.879  83.858  83.873  0.0024
#  #> SOYBN_USD   12.113  12.237  11.966  12.091 -0.1816
#  #> NATGAS_USD   5.644   5.649   5.616   5.630 -0.2481
#  #> SUGAR_USD  0.19468 0.19530 0.19230 0.19242 -1.1609
#  #> WHEAT_USD    7.280   7.304   7.054   7.104 -2.4176
#  #> CORN_USD     5.454   5.466   5.274   5.322 -2.4202

## ----oandai, eval=FALSE-------------------------------------------------------
#  oanda_instruments()

## ----ins, echo=FALSE----------------------------------------------------------
print(ichimoku:::x_oanda_instruments)

