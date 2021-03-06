% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/var_filter.R
\name{var_filter}
\alias{var_filter}
\title{Variable Filter}
\usage{
var_filter(dt, y, x = NULL, iv_limit = 0.02, missing_limit = 0.95,
  identical_limit = 0.95, var_rm = NULL, var_kp = NULL,
  return_rm_reason = FALSE, positive = "bad|1")
}
\arguments{
\item{dt}{A data frame with both x (predictor/feature) and y (response/label) variables.}

\item{y}{Name of y variable.}

\item{x}{Name of x variables. Default NULL If x is NULL, all variables exclude y will counted as x variables.}

\item{iv_limit}{The information value of kept variables should >= iv_limit, default 0.02.}

\item{missing_limit}{The missing rate of kept variables should <= missing_limit, default 0.95.}

\item{identical_limit}{The identical value rate (excluding NAs) of kept variables should <= identical_limit, default 0.95.}

\item{var_rm}{Name of force removed variables, default NULL.}

\item{var_kp}{Name of force kept variables, default NULL.}

\item{return_rm_reason}{Logical, default FALSE.}

\item{positive}{Value of positive class, default "bad|1".}
}
\value{
A data.table with y and selected x variables and a data.table with the reason of removed x variable if return_rm_reason == TRUE.
}
\description{
This function filter variables base on specified conditions, such as information value, missing rate, identical value rate.
}
\examples{
# Load German credit data
data(germancredit)

# variable filter
dt_sel = var_filter(germancredit, y = "creditability")


}
