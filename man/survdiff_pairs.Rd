% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surv.R
\name{survdiff_pairs}
\alias{survdiff_pairs}
\title{Pairwise \code{survdiff} comparisons}
\usage{
survdiff_pairs(s, ..., method = p.adjust.methods,
  digits = getOption("digits"))
}
\arguments{
\item{s}{an object of class \code{\link[survival]{survdiff}} or
\code{\link[survival]{survfit}}}

\item{...}{additional arguments passed to \code{\link{survdiff}} such as
\code{na.action} or \code{rho} to control the test}

\item{method}{p-value correction method (default is \code{'holm'}; see
\code{\link{p.adjust}}}

\item{digits}{integer indicating the number of decimal places to be used}
}
\value{
A list with three elements:
\item{\code{n}}{the number of subjects in each pair of groups}
\item{\code{chi.sq}}{the chi-square statistic for a test of equality
between pairs of groups}
\item{\code{p.value}}{significance for each test. The lower and upper
triangles of the matrix are uncorrected and adjusted, respectively, for
multiple comparisons using \code{method} (the default is the Holm
correction, see \code{\link{p.adjust}})}
}
\description{
Evaluate pairwise group differences in survival curves with
\code{\link[survival]{survdiff}}. This function currently works for
\emph{one} \code{factor}-like variable, and all unique values are treated
as separate groups. To use multiple predictors, create a new variable
as the \code{\link{interaction}} of two or more predictors.
}
\examples{
library('survival')
sdif <- survdiff(Surv(time, status) ~ sex, data = lung)
sfit <- survfit(Surv(time, status) ~ sex, data = lung)

stopifnot(
  identical(survdiff_pairs(sdif), survdiff_pairs(sfit))
)

 
## numeric and integer variables will be treated as factor-like
sfit <- survfit(Surv(time, status) ~ extent, data = colon)
kmplot(sfit)
survdiff_pairs(sfit)

## compare
survdiff(Surv(time, status) ~ extent, data = colon[colon$extent \%in\% 1:2, ])


## for interactions, create a new variable with all levels
colon$int <- with(colon, interaction(sex, extent))
sfit <- survfit(Surv(time, status) ~ int, data = colon)
survdiff_pairs(sfit, rho = 1, method = 'BH')

}
\seealso{
\code{\link[rawr]{pvalr}}; \code{\link{survdiff}}; \code{\link{p.adjust}};
\code{\link[rms]{contrast}} from the \pkg{\link[rms]{rms}} package;
\code{\link{pairwise.table}}
}
