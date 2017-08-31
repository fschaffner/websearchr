#' @title Search Bing
#' @description Improve your workflow by searching Bing directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords bing internet workflow
#' @import utils
#' @examples
#' bing("my search terms")

#' @export
bing <- function(search.terms) {
  message("Opening Bing search for \"", search.terms, "\" in browser")
  browseURL(paste0("https://www.bing.com/search?q=", URLencode(search.terms)))
}
