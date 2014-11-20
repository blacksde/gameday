#' Is computer connected to internet?
#'
#' This function returns TRUE if the computer is connected to internet
#' and FALSE otherwise
#'
#' This function returns TRUE if the computer is connected to internet
#' and FALSE otherwise
#'
#'
#' @param NULL
#' @return Logical. \code{TRUE} if the computer is connected to internet,
#' \code{FALSE} otherwise
#' @keywords misc

internet_connection <- function() {
	tryCatch({RCurl::getURL("www.google.com"); TRUE},
					 error = function(err) FALSE)
}
