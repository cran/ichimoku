## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 5
)

## ----setup--------------------------------------------------------------------
library(ichimoku)

## ----tradingDays--------------------------------------------------------------
dates <- seq(from = as.POSIXct("2020-01-01"), by = "1 day", length.out = 7)
dates
tradingDays(dates)
tradingDays(dates, holidays = c("2020-01-01", "2020-01-02"))


## ----griddup------------------------------------------------------------------
n <- 3
expand.grid(1:n, 1:n)
expand.grid(1:n, 1:n)[-grid_dup(n), ]
expand.grid(1:n, 1:n)[-grid_dup(n, omit.id = TRUE), ]

## ----xtsdf--------------------------------------------------------------------
cloud <- ichimoku(sample_ohlc_data)
df <- xts_df(cloud)
str(df)

## ----matrixdf-----------------------------------------------------------------
cloud <- ichimoku(sample_ohlc_data)
mcloud <- as.matrix(cloud)
df <- matrix_df(mcloud)
str(df)
str(row.names(df))

## ----dftrim-------------------------------------------------------------------
data <- data.frame(c(1:4, NA), c(NA, 2:5))
data
df_trim(data)

## ----dfmerge------------------------------------------------------------------
data1 <- sample_ohlc_data[1:6, ]
data1
data2 <- sample_ohlc_data[4:10, ]
data2
df_merge(data1, data2)

## ----dfappend-----------------------------------------------------------------
data1 <- sample_ohlc_data[7:10, ]
data1
data2 <- sample_ohlc_data[1:8, ]
data2
df_append(data1, data2)

