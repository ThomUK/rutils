#' Use the NHS ORD API to fetch a lookup table of active trusts
#'
#' @param include_inactive A logical vector to include inactive trusts in the
#'  result.  Defaults to FALSE.
#'
#' @return A dataframe of active trusts.
#'
#' @importFrom magrittr %>%
#' @export

tsu_nhs_trusts_lookup <- function(include_inactive = FALSE){

  active_string <- ifelse(include_inactive, "", "&Status=Active")

  url <- paste0(
    "https://directory.spineservices.nhs.uk/ORD/2-0-0/organisations?PrimaryRoleId=RO197&Limit=1000",
    active_string
  )

  response <- httr::GET(url)

  data <- httr::content(response) %>%
    tidyr::as_tibble() %>%
    tidyr::unnest_wider("Organisations")

}
