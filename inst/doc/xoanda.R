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
#  # Streaming session will end with data automatically returned after 15 mins as set by 'limit':
#  data <- oanda_stream("UK10YB_GBP", limit = 15)
#  #> Streaming data... Press 'Esc' to return
#  #>    type                           time bid.price b.liquidity ask.price a.liquidity closeout.b closeout.a
#  #> 1 PRICE 2021-12-10T10:21:05.102768669Z   128.057       10000   128.087       10000    128.057    128.087
#  #> 2 PRICE 2021-12-10T10:21:54.853095391Z   128.057       10000   128.097       10000    128.057    128.097
#  #> 3 PRICE 2021-12-10T10:21:56.678923090Z   128.067       10000   128.097       10000    128.067    128.097
#  #> 4 PRICE 2021-12-10T10:21:58.959780877Z   128.057       10000   128.087       10000    128.057    128.087
#  #> 5 PRICE 2021-12-10T10:21:59.001234626Z   128.067       10000   128.097       10000    128.067    128.097
#  #> 6 PRICE 2021-12-10T10:22:01.827068694Z   128.067       10000   128.097       10000    128.067    128.097
#  #> 7 PRICE 2021-12-10T10:22:05.130294655Z   128.067       10000   128.097       10000    128.067    128.097
#  #>      status tradable instrument
#  #> 1 tradeable     TRUE UK10YB_GBP
#  #> 2 tradeable     TRUE UK10YB_GBP
#  #> 3 tradeable     TRUE UK10YB_GBP
#  #> 4 tradeable     TRUE UK10YB_GBP
#  #> 5 tradeable     TRUE UK10YB_GBP
#  #> 6 tradeable     TRUE UK10YB_GBP
#  #> 7 tradeable     TRUE UK10YB_GBP

## ----oandaq, eval = FALSE-----------------------------------------------------
#  oanda_quote("USD_JPY")
#  #> USD_JPY 2021-10-05 16:29:44 open: 110.931  high: 111.564  low: 110.871  last: 111.398  %chg: 0.421 M

## ----oandav, eval = FALSE-----------------------------------------------------
#  oanda_view()
#  Enter market [a]llfx [b]onds [c]ommodities [f]x [m]etals [s]tocks: c
#  #> Retrieving commodities [..........]
#  #> 2021-12-11 01:58:21 / M
#  #>                  open      high        low       last    %chg
#  #> NATGAS_USD    3.76200    3.9260    3.72400    3.85200  2.3923
#  #> BCO_USD      74.52600   76.2310   74.32600   75.88000  1.8168
#  #> WTICO_USD    70.91200   72.5540   70.55400   72.19000  1.8022
#  #> WHEAT_USD     7.67200    7.7710    7.57100    7.72700  0.7169
#  #> XPT_USD     930.20200  939.6000  924.29400  936.43800  0.6704
#  #> SOYBN_USD    12.63500   12.7580   12.58800   12.67800  0.3403
#  #> SUGAR_USD     0.19274    0.1948    0.19176    0.19334  0.3113
#  #> CORN_USD      5.89800    5.9410    5.86800    5.90200  0.0678
#  #> XCU_USD       4.30292    4.3479    4.26536    4.28361 -0.4488
#  #> XPD_USD    1805.14800 1815.1260 1729.61100 1752.81200 -2.8993

## ----oandai, eval=FALSE-------------------------------------------------------
#  oanda_instruments()

## ----ins, echo=FALSE----------------------------------------------------------
print(ichimoku:::.oanda_instruments)

