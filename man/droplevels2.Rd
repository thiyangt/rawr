% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{droplevels2}
\alias{droplevels2}
\title{Drop factor levels}
\usage{
droplevels2(x, min_level = 1L, max_level = max(as.integer(x), na.rm =
  TRUE))
}
\arguments{
\item{x}{a factor variable}

\item{min_level, max_level}{min and max unused factor levels to include}
}
\description{
Drop factor levels preserving the range, i.e., unused levels between
\code{min_level} and \code{max_level} will not be dropped.
}
\examples{
x <- factor(c('b', 'd'), levels = letters[1:5])
droplevels(x)

droplevels2(x)
droplevels2(x, min_level = 2, max_level = 5)

droplevels2(factor(c(1, NA)))

}
\seealso{
\code{\link{droplevels}}
}
