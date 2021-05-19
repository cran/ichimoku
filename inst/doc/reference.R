## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 5
)

## ----setup--------------------------------------------------------------------
library(ichimoku)

## ----loaddatanotrun, eval = FALSE---------------------------------------------
#  # ichimoku is designed to interface well with other packages, for example the following works:
#  cloud <- ichimoku(quantmod::getSymbols("C"))

## ----viewdata-----------------------------------------------------------------
# Synthetic OHLC pricing data is assigned to data frame 'TKR':
TKR <- sample_ohlc_data
head(TKR)

## ----ichimoku-----------------------------------------------------------------
cloud <- ichimoku(TKR)

print(cloud[100:110,], plot = FALSE, row.names = FALSE, digits = 4)

## ----ichimokunotrun, eval = FALSE---------------------------------------------
#  # to view data as well as chart, simply issue:
#  cloud

## ----plot---------------------------------------------------------------------
plot(cloud)

## ----plotnotrun, eval = FALSE-------------------------------------------------
#  # The following would work if you wanted to add/replace ggplot2 layers:
#  plot <- plot(cloud)
#  plot + ggplot2::theme_classic()

## ----iplotnotrun, eval = FALSE------------------------------------------------
#  # For interactive charting, take your pick of:
#  iplot(cloud)
#  # which is equivalent to:
#  plot(cloud, i = TRUE)
#  # which is also equivalent to, using argument position matching and abbreviation of TRUE:
#  plot(cloud, T)

## ----plot2--------------------------------------------------------------------
plot(cloud, from = "2020-05-01", to = "2020-11-01", ticker = "TKR Co.", theme = "dark", gaps = TRUE)

## ----pipe, eval = FALSE-------------------------------------------------------
#  # The following works:
#  quantmod::getSymbols("C") %>% ichimoku() %>% plot()

