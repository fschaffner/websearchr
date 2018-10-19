#' Search Qwant
#' @description Improve your workflow by searching Qwant directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords qwant internet workflow
#' @examples
#' qwant("my search terms")
#' @export

qwant <- function(search_terms) {
  message("Opening Qwant search for \"", search_terms, "\" in browser")
  browseURL(paste0("https://www.qwant.com/?q=", URLencode(search_terms)))
}
