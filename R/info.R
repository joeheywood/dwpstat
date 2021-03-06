

#' Information on the Stat-Xplore API
#'
#' As of 2018-08-20, `dwp_info` only returns the languages available on the
#' server, and the only available language is English. This function does
#' not accept any parameters.
#'
#' @return A list with available languages on the API
#' @export
#'
# @examples
#'
#'

dwp_info <- function() {
  query <- paste0(dwp_baseurl, "info")

  resp <- dwp_get_info_util(query)

  resp
}
