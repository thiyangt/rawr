% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils2.R
\name{tabler}
\alias{tabler}
\alias{tabler.default}
\alias{tabler.lm}
\alias{tabler.glm}
\alias{tabler.survfit}
\alias{tabler.coxph}
\title{Tabler}
\usage{
tabler(x, ...)

\method{tabler}{default}(x, ...)

\method{tabler}{lm}(x, digits = 3L, ...)

\method{tabler}{glm}(x, digits = 3L, level = 0.95, exp = TRUE, ...)

\method{tabler}{survfit}(x, ...)

\method{tabler}{coxph}(x, digits = 3L, level = 0.95, exp = TRUE, ...)
}
\arguments{
\item{x}{an object of class \code{\link{lm}}, \code{\link{glm}},
\code{\link{survfit}}}

\item{...}{additional arguments passed to or from other methods}

\item{digits}{number of digits printed}

\item{level}{confidence level; default is \code{0.95}}

\item{exp}{logical; if \code{TRUE}, estimates and confidence intervals are
exponentiated (for \code{glm} or \code{coxph} methods only)}
}
\description{
Extracts coefficients, standard errors, odds ratios, confidence intervals,
p-values, etc. from model fits.
}
\examples{
lmfit <- lm(mpg ~ hp + disp + wt, data = mtcars)
tabler(lmfit)

glmfit <- glm(vs ~ drat + factor(gear), data = mtcars, family = 'binomial')
tabler(glmfit)
tabler(glmfit, exp = FALSE)

library('survival')
sfit <- survfit(Surv(time, status) ~ 1, data = cancer, conf.int = 0.9)
tabler(sfit)

cphfit <- coxph(Surv(time, status) ~ factor(sex) + age, cancer)
tabler(cphfit)

}
\seealso{
\code{\link{tabler_by}}; \code{\link{tabler_stat}}
}
