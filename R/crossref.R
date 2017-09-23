#' Find DOI's and other bibliographic metadata
#' @description Search crossref.org directly from the R console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords DOI bibliography internet workflow
#' @importFrom utils URLencode browseURL
#' @examples
#' crossref("my source")
#' @export

crossref <- function(search.terms) {
  message("Opening crossref.org search for \"", search.terms, "\" in browser")
  utils::browseURL(paste0("http://search.crossref.org/?q=", utils::URLencode(search.terms)))
}





