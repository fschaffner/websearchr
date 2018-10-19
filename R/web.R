#' Access Domain
#' @description Improve your workflow by accessing web directly from R console.
#' @param address The web address you want to open, encapsulated in " ".
#' @param https if FALSE "http" will be used instead of the default "https".
#' @param suppressWWW if TRUE "www" will be suppressed and the user input will follow directly after https://
#' @keywords web workflow
#' @examples
#' web("r-project.org")

#' @export
web <- function(address, https = TRUE, suppressWWW = FALSE) {
  if (https==TRUE) {
    a <- paste0("https://")
  }
  else {
    a <- paste0("http://")
  }
  if (suppressWWW==FALSE) {
    b <- paste0("www.", address)
  }
  else {
    b <- paste0(address)
  }
  message("Opening ", a, b, " in browser")
  browseURL(paste0(a, b))
}
