% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{interleave}
\alias{interleave}
\title{Interleave rows or columns}
\usage{
interleave(..., which)
}
\arguments{
\item{...}{vectors, matrices, data frames, or lists}

\item{which}{joining method to use (\code{'rbind'} or \code{'cbind'}) when
\code{...} are matrices or data frames}
}
\description{
Interleave rows (or columns) of vectors, matrices, data frames, or lists.
}
\examples{
interleave(letters[1:3], LETTERS[3:1], letters[26:24])


m1 <- matrix(1:9, 3, 3)
m2 <- matrix(1:9 * 10, 3, 3)
interleave(t(m1), t(m2), which = 'rbind')
interleave(m1, m2, which = 'cbind')


d1 <- data.frame(m1)
interleave(d1, d1, which = 'cbind')

l <- list(d1, d1)
interleave(l, which = 'cbind')
interleave(l, l, l, which = 'cbind')


# interleave(d1, m2, which = 'rbind')  ## error
interleave(d1, m2, which = 'rbindx')   ## works

}
\seealso{
\code{\link{bindx}}
}
