% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iv.R
\name{iv}
\alias{iv}
\title{Information Value}
\usage{
iv(dt, y, x = NULL, positive = "bad|1", order = TRUE)
}
\arguments{
\item{dt}{A data frame with both x (predictor/feature) and y (response/label) variables.}

\item{y}{Name of y variable.}

\item{x}{Name of x variables. Default NULL If x is NULL, all variables exclude y will counted as x variables.}

\item{positive}{Value of positive class, default "bad|1".}

\item{order}{Logical. If it is TRUE, return descending sorted iv values.}
}
\value{
Information Value
}
\description{
This function calculates information value (IV) for multiple x variables.
}
\details{
IV is a very useful concept for variable selection while developing credit scorecards. The formula for information value is shown below: \deqn{IV = \sum(DistributionBad_{i} - DistributionGood_{i})*\ln(\frac{DistributionBad_{i}}{DistributionGood_{i}}).} The log component in information value is defined as weight of evidence (WOE), which is shown as \deqn{WeightofEvidence = \ln(\frac{DistributionBad_{i}}{DistributionGood_{i}}).} The relationship between information value and predictive power is as follows: <0.02 (useless for prediction), 0.02 to 0.1 (Weak predictor), 0.1 to 0.3 (Medium predictor), 0.3 to 0.5 (Strong predictor) and >0.5 (Suspicious or too good to be true).
}
\examples{
# Load German credit data
data(germancredit)

# information values
dt_infovalue = iv(germancredit, y = "creditability")

}
