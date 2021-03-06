% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sas.R
\name{sas_path}
\alias{sas_path}
\title{Get \code{SAS} path}
\usage{
sas_path(saspath, sashome, version)
}
\arguments{
\item{saspath}{(optional) full path to sas executable; if given, all other
arguments are ignored, and \code{saspath} is only checked for existence}

\item{sashome}{(optional) full path to directory of version directories}

\item{version}{(optional) version to use}
}
\description{
Find versions of \code{SAS} installed and return path to latest executable
version by default.

For windows usually \code{c:/program files/sashome/sasfoundation/x.x/sas.exe},
where \code{x.x} is the \code{SAS} version number is the correct directory.
For v9.2, the default \code{c:/program files/sasfoundation/9.2/sas.exe} is
used. For linux/unix platforms, \code{sas} must be in the \code{$PATH}, or
it will be necessary to give \code{saspath}.

For previous versions or if \code{SAS} is not installed in the default
directory, it will be necessary to give a full \code{saspath} to the
executable.
}
\examples{
\dontrun{
sas_path()
sas_path('/usr/local/SAS_9.2/sas')
}

}
\seealso{
\code{\link{r2sas}}, \code{\link{rmacro}}, \code{\link{get_margs}},
\code{\link{sas_mget}}, \code{\link{source_sas}},
\code{\link{parse_formats}}, \code{\link{sas_catalog}}
}
