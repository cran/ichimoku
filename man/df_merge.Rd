% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{df_merge}
\alias{df_merge}
\title{Merge Dataframes}
\usage{
df_merge(...)
}
\arguments{
\item{...}{data.frame objects to combine.}
}
\value{
A data.frame containing all unique entries in the objects passed as
    argument.
}
\description{
Full join on an arbitrary number of 'data.frame' objects passed as arguments,
    preserving all unique entries. Can be used to combine historical time
    series data where each observation is indexed by a unique timestamp and
    all periods are complete.
}
\details{
Can be used to join price dataframes retrieved by \code{\link{oanda}}.
    The function is designed to join complete historical data. If the data to
    be merged contains data with incomplete periods, all entries are
    preserved rather than updated. If incomplete periods are detected within
    the data, a warning is issued, and the resulting dataframe should be
    manually checked in case it contains unwanted duplicates. Use
    \code{\link{df_append}} for updating dataframes with new values.
}
\examples{
data1 <- sample_ohlc_data[1:6, ]
data1
data2 <- sample_ohlc_data[4:10, ]
data2
df_merge(data1, data2)

}
