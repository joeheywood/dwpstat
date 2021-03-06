% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api_key.R
\name{dwp_api_key}
\alias{dwp_api_key}
\title{DWP API Key}
\usage{
dwp_api_key(check_env = FALSE)
}
\arguments{
\item{check_env}{If \code{TRUE}, will check the environment variable
\code{DWP_API_KEY} first before asking for user input.}
}
\description{
Assign or reassign API key for the Stat-Xplore API.
}
\details{
By default, \code{DWP} will look for the environment variable
\code{DWP_API_KEY} when the package is loaded. If found, the API key will
be stored in the session option \code{DWP.API.key}. If you would like to
reload the API key or would like to manually enter one in, this function
may be used.

You can sign up for an API key
\href{https://stat-xplore.dwp.gov.uk}{here}.
}
