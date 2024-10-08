% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oanda.R
\name{oanda_view}
\alias{oanda_view}
\title{OANDA View Market Performance}
\usage{
oanda_view(
  market = c("allfx", "bonds", "commodities", "fx", "metals", "stocks"),
  price = c("M", "B", "A"),
  server,
  apikey
)
}
\arguments{
\item{market}{string specifying the market: 'allfx' for all available
currencies, 'bonds' for government bonds, 'commodities' for commodities,
'fx' for major currency pairs, 'metals' for metals and 'stocks' for
global stock markets.}

\item{price}{[default "M"] pricing component, one of "M" (midpoint), "B"
(bid) or "A" (ask).}

\item{server}{(optional) specify the "practice" or "live" server according to
the account type held. If not specified, will default to "practice",
unless this has been changed by \code{\link{oanda_switch}}.}

\item{apikey}{(optional) string containing the OANDA fxTrade API key
(personal access token), or function that returns this string. Does not
need to be specified if already stored as the environment variable
\code{OANDA_API_KEY} or by \code{\link{oanda_set_key}}. Can also be
entered interactively if not specified.}
}
\value{
A data.frame containing the daily open, high, low and last prices,
    along with the percentage price change from the open, ordered by the
    percentage change. The instrument names are set as row names.

    The first timestamp retrieved and the pricing component are printed to
    the console as well as saved as attributes to the dataframe. The dataframe
    is also printed to the console.
}
\description{
Provides a snapshot overview of markets on an intraday basis, showing the
    relative performance of individual constituents.
}
\details{
This function is designed for interactive use.

    For further details please refer to the OANDA fxTrade API vignette by
    calling: \code{vignette("xoanda", package = "ichimoku")}.
}
\examples{
\dontrun{
# OANDA fxTrade API key required to run this example
oanda_view("fx")
}

}
