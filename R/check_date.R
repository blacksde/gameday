#' Is date a vilid date?
#'
#' This function returns TRUE if the input is a vilde date
#' and FALSE otherwise
#'
#' This function returns TRUE if the input is a vilde date
#' and FALSE otherwise
#'
#'
#' @param NULL
#' @return Logical. \code{TRUE} if the input is a vilde date,
#' \code{FALSE} otherwise
#' @keywords misc

check_date<-function(date = Sys.Date()){
	tryCatch({as.Date(date); TRUE},
					 error = function(err) FALSE)
}
