% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{rawr_rownames}
\alias{rawr_rownames}
\alias{rownames_to_column}
\alias{column_to_rownames}
\title{Rowname tools}
\usage{
rownames_to_column(data, column = "rownames", where = 1L)

column_to_rownames(data, column = "rownames", where = 1L)
}
\arguments{
\item{data}{a matrix or data frame}

\item{column}{the name of the column to create or the column name used
to create the row names; if \code{column} is already used, the new name
will be passed to \code{\link{make.unique}} before used}

\item{where}{the location to add \code{column} or the index of the column
used to create new row names; for \code{rownames_to_column}, the default
is to add the new column first; optional for \code{column_to_rownames}
\code{column} will be ignored if \code{where} is given}
}
\description{
Convenience functions for working with row names.

\code{rownames_to_column} adds a column to an object using its
\code{\link{rownames}}; \code{column_to_rownames} adds rownames to an
object using a specified column.
}
\examples{
x <- rownames_to_column(mtcars, where = 5)
identical(mtcars, column_to_rownames(x))
identical(mtcars, column_to_rownames(x, where = 5))

column_to_rownames(as.matrix(mtcars), 'mpg')

}
\seealso{
\code{\link{insert}}; \code{tibble::rownames}
}
