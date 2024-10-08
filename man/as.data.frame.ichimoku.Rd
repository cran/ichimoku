% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{as.data.frame.ichimoku}
\alias{as.data.frame.ichimoku}
\title{Convert ichimoku to data.frame}
\usage{
\method{as.data.frame}{ichimoku}(x, row.names, optional, keep.attrs = FALSE, ...)
}
\arguments{
\item{x}{an object of class \sQuote{ichimoku}.}

\item{row.names}{not used.}

\item{optional}{not used.}

\item{keep.attrs}{[default FALSE] if set to TRUE, will preserve any custom
attributes set on the original object.}

\item{...}{arguments passed to or from other methods.}
}
\value{
A \sQuote{data.frame} object. The ichimoku object index is preserved
    as the first column with header \sQuote{index}.
}
\description{
An optimised 'ichimoku' to 'data.frame' constructor.
}
\details{
This function is an S3 method for the generic function
    as.data.frame() for class \sQuote{ichimoku}. It can be invoked by calling
    as.data.frame(x) on an object \sQuote{x} of class \sQuote{ichimoku}.
}
\examples{
cloud <- ichimoku(sample_ohlc_data)
df <- as.data.frame(cloud)
str(df)

df2 <- as.data.frame(cloud, keep.attrs = TRUE)
str(df2)

}
