% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zxx.R
\name{vgrep}
\alias{vgrep}
\alias{vgrepl}
\title{\code{grep} for vectors}
\usage{
vgrep(pattern, x)

vgrepl(pattern, x)
}
\arguments{
\item{pattern}{a vector to be matched}

\item{x}{vector having the same type as \code{pattern} where matches are
sought}
}
\value{
For \code{vgrep}, a vector of indices indicating the start of the matches
found in \code{x}. For \code{vgrepl}, a list of logical vetors of
\code{length(x)} for each match found in \code{x}.
}
\description{
\code{grep} vectors for patterns given by other vectors.
}
\examples{
x <- c(0,1,1,0,1,1,NA,1,1,0,1,1,NA,1,0,0,1,
       0,1,1,1,NA,1,0,1,NA,1,NA,1,0,1,0,NA,1)
vgrep(c(1, NA, 1), x)
vgrepl(c(1, NA, 1), x)

vgrep(c(1, 0, 1, NA), x)
which(vgrepl(c(1, 0, 1, NA), x)[[1]])

}
\references{
Adapted from \url{https://stackoverflow.com/q/33027611/2994949}
}
\seealso{
\code{\link{grep}}; \code{\link[rawr]{mgrep}}; \code{\link[rawr]{\%==\%}}
}
