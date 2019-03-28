#' Get last error
#' @description This is a helper function that returns the last produced error message in R, which is intended to be used within any of the search functions of the {websearchr} package. It adds the keyword "R" to the beginning for improved accuracy of search results.
#' @keywords error message
#' @examples
#' # Query last error message
#' last_error()
#' @export

last_error <- function() {
  return(paste("R", geterrmessage()))
}

#' Get last warning
#' @description This is a helper function that returns the last produced warning message in R, which is intended to be used within any of the search functions of the {websearchr} package. It adds the keyword "R" to the beginning for improved accuracy of search results.
#' @keywords warning message
#' @examples
#' \dontrun{
#' # Create example warning
#' warning("Example warning")
#'
#' # Query last warning message
#' last_warning()
#' }
#' @export

last_warning <- function() {
  if (!is.null(get0("last.warning", envir = baseenv()))) {
    return(paste("R", names(last.warning)))
  }
  else {
    stop("No warning has been issued in the current R session.")
  }
}


# Avoid R CMD check note regarding last.warning
if(getRversion() >= "3.5.0") utils::globalVariables(c("last.warning"))
