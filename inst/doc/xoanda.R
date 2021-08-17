## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 5
)


## ----oanda, eval=FALSE--------------------------------------------------------
#  library(ichimoku)
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

## ----instruments, echo=FALSE--------------------------------------------------
data.frame(
  stringsAsFactors = FALSE,
              name = c("AU200_AUD","AUD_CAD",
                       "AUD_CHF","AUD_HKD","AUD_JPY","AUD_NZD","AUD_SGD","AUD_USD",
                       "BCO_USD","CAD_CHF","CAD_HKD","CAD_JPY","CAD_SGD",
                       "CHF_HKD","CHF_JPY","CHF_ZAR","CN50_USD","CORN_USD",
                       "DE10YB_EUR","DE30_EUR","EU50_EUR","EUR_AUD",
                       "EUR_CAD","EUR_CHF","EUR_CZK","EUR_DKK","EUR_GBP","EUR_HKD",
                       "EUR_HUF","EUR_JPY","EUR_NOK","EUR_NZD","EUR_PLN",
                       "EUR_SEK","EUR_SGD","EUR_TRY","EUR_USD","EUR_ZAR",
                       "FR40_EUR","GBP_AUD","GBP_CAD","GBP_CHF","GBP_HKD",
                       "GBP_JPY","GBP_NZD","GBP_PLN","GBP_SGD","GBP_USD",
                       "GBP_ZAR","HK33_HKD","HKD_JPY","IN50_USD","JP225_USD",
                       "NAS100_USD","NATGAS_USD","NL25_EUR","NZD_CAD","NZD_CHF",
                       "NZD_HKD","NZD_JPY","NZD_SGD","NZD_USD","SG30_SGD",
                       "SGD_CHF","SGD_JPY","SOYBN_USD","SPX500_USD",
                       "SUGAR_USD","TRY_JPY","TWIX_USD","UK100_GBP","UK10YB_GBP",
                       "US2000_USD","US30_USD","USB02Y_USD","USB05Y_USD",
                       "USB10Y_USD","USB30Y_USD","USD_CAD","USD_CHF","USD_CNH",
                       "USD_CZK","USD_DKK","USD_HKD","USD_HUF","USD_INR",
                       "USD_JPY","USD_MXN","USD_NOK","USD_PLN","USD_SEK",
                       "USD_SGD","USD_THB","USD_TRY","USD_ZAR","WHEAT_USD",
                       "WTICO_USD","XAG_AUD","XAG_CAD","XAG_CHF","XAG_EUR",
                       "XAG_GBP","XAG_HKD","XAG_JPY","XAG_NZD","XAG_SGD",
                       "XAG_USD","XAU_AUD","XAU_CAD","XAU_CHF","XAU_EUR","XAU_GBP",
                       "XAU_HKD","XAU_JPY","XAU_NZD","XAU_SGD","XAU_USD",
                       "XAU_XAG","XCU_USD","XPD_USD","XPT_USD","ZAR_JPY"),
              type = c("CFD","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CFD","CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CFD","CFD","CFD",
                       "CFD","CFD","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY","CFD",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CFD","CURRENCY","CFD","CFD","CFD","CFD","CFD",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CFD","CURRENCY","CURRENCY","CFD",
                       "CFD","CFD","CURRENCY","CFD","CFD","CFD","CFD","CFD",
                       "CFD","CFD","CFD","CFD","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CURRENCY","CURRENCY","CURRENCY",
                       "CURRENCY","CFD","CFD","METAL","METAL","METAL","METAL",
                       "METAL","METAL","METAL","METAL","METAL","METAL",
                       "METAL","METAL","METAL","METAL","METAL","METAL","METAL",
                       "METAL","METAL","METAL","METAL","CFD","METAL",
                       "METAL","CURRENCY"),
       displayName = c("Australia 200","AUD/CAD",
                       "AUD/CHF","AUD/HKD","AUD/JPY","AUD/NZD","AUD/SGD",
                       "AUD/USD","Brent Crude Oil","CAD/CHF","CAD/HKD","CAD/JPY",
                       "CAD/SGD","CHF/HKD","CHF/JPY","CHF/ZAR","China A50",
                       "Corn","Bund","Germany 30","Europe 50","EUR/AUD",
                       "EUR/CAD","EUR/CHF","EUR/CZK","EUR/DKK","EUR/GBP",
                       "EUR/HKD","EUR/HUF","EUR/JPY","EUR/NOK","EUR/NZD",
                       "EUR/PLN","EUR/SEK","EUR/SGD","EUR/TRY","EUR/USD",
                       "EUR/ZAR","France 40","GBP/AUD","GBP/CAD","GBP/CHF",
                       "GBP/HKD","GBP/JPY","GBP/NZD","GBP/PLN","GBP/SGD","GBP/USD",
                       "GBP/ZAR","Hong Kong 33","HKD/JPY","India 50",
                       "Japan 225","US Nas 100","Natural Gas","Netherlands 25",
                       "NZD/CAD","NZD/CHF","NZD/HKD","NZD/JPY","NZD/SGD",
                       "NZD/USD","Singapore 30","SGD/CHF","SGD/JPY","Soybeans",
                       "US SPX 500","Sugar","TRY/JPY","Taiwan Index","UK 100",
                       "UK 10Y Gilt","US Russ 2000","US Wall St 30",
                       "US 2Y T-Note","US 5Y T-Note","US 10Y T-Note","US T-Bond",
                       "USD/CAD","USD/CHF","USD/CNH","USD/CZK","USD/DKK",
                       "USD/HKD","USD/HUF","USD/INR","USD/JPY","USD/MXN",
                       "USD/NOK","USD/PLN","USD/SEK","USD/SGD","USD/THB",
                       "USD/TRY","USD/ZAR","Wheat","West Texas Oil","Silver/AUD",
                       "Silver/CAD","Silver/CHF","Silver/EUR","Silver/GBP",
                       "Silver/HKD","Silver/JPY","Silver/NZD","Silver/SGD",
                       "Silver","Gold/AUD","Gold/CAD","Gold/CHF","Gold/EUR",
                       "Gold/GBP","Gold/HKD","Gold/JPY","Gold/NZD","Gold/SGD",
                       "Gold","Gold/Silver","Copper","Palladium","Platinum",
                       "ZAR/JPY")
)

