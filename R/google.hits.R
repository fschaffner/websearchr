#' Obtain number of Google hits
#' @description Quickly get a grasp of how much a search term or a combination of search terms are searched for on google.
#'
#' Inspired by this discussion on Stackoverflow: https://stackoverflow.com/questions/30199157/r-google-search-result-count-retrieve
#' @param search.terms Search terms encapsulated in "".
#' @keywords google hits internet
#' @examples
#' google.hits("my search terms")
#'
#' # Your Search URL:
#' # https://www.google.com/search?q=my%20search%20terms
#'
#' # No. of Hits:
#' # [1] 117000000

#' @export
google.hits <- function(search.terms) {

  # check if XML and RCurl are installed
  if (!requireNamespace("XML", quietly = TRUE)) {
    stop("XML needed for this function to work. Please install it with install.packages('XML')", call. = FALSE)
  }
  if (!requireNamespace("RCurl", quietly = TRUE)) {
    stop("RCurl needed for this function to work. Please install it with install.packages('RCurl')", call. = FALSE)
  }

  a <- URLencode(search.terms)
  url <- paste0("https://www.google.com/search?q=", a)
  CAINFO = paste0(system.file(package="RCurl"), "/CurlSSL/ca-bundle.crt")
  script <- RCurl::getURL(url, followlocation = TRUE, cainfo = CAINFO)
  doc <- XML::htmlParse(script)
  res <- XML::xpathSApply(doc, '//*/div[@id="resultStats"]', XML::xmlValue)
  cat(paste0("\nYour Search URL:\n", url, "\n"))
  cat("\nNo. of hits:\n")
  return(as.integer(gsub("[^0-9]", "", res)))
}


