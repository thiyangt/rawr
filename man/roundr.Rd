% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils2.R
\name{roundr}
\alias{roundr}
\alias{roundr.default}
\alias{roundr.matrix}
\alias{roundr.data.frame}
\title{roundr}
\usage{
roundr(x, digits = 1L)

\method{roundr}{default}(x, digits = 1L)

\method{roundr}{matrix}(x, digits = 1L)

\method{roundr}{data.frame}(x, digits = 1L)
}
\arguments{
\item{x}{numeric vector, matrix, or data frame}

\item{digits}{number of digits past the decimal point to keep}
}
\value{
An object having the same class as \code{x}.
}
\description{
Improved rounding formatter.
}
\details{
Uses \code{\link[base]{sprintf}} to round numeric value while keeping
trailing zeros.
}
\examples{
## compare
round(0.199, 2)
roundr(0.199, 2)

## drops negative when x rounds to 0, eg, case 1:
roundr(c(-0.0002, 0.0002, 0.5, -0.5, -0.002), digits = 3)

## for matrices or data frames (including factors and/or characters)
roundr(matrix(1:9, 3))

dd <- within(head(mtcars), {
  mpg <- as.character(mpg)
  cyl <- factor(cyl, labels = LETTERS[1:3])
})

roundr(dd)

}
\seealso{
\code{\link[base]{round}}; \code{\link[base]{sprintf}};
\code{\link{round_to}}; \code{\link{pvalr}}
}
