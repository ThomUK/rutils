% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tsu_nhs_trusts_lookup.R
\name{tsu_nhs_trusts_lookup}
\alias{tsu_nhs_trusts_lookup}
\title{Use the NHS ORD API to fetch a lookup table of active trusts}
\usage{
tsu_nhs_trusts_lookup(include_inactive = FALSE)
}
\arguments{
\item{include_inactive}{A logical vector to include inactive trusts in the
result.  Defaults to FALSE.}
}
\value{
A dataframe of active trusts.
}
\description{
Use the NHS ORD API to fetch a lookup table of active trusts
}
