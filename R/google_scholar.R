#' Search Google Scholar
#' @description Improve your workflow by searching Google Scholar directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords google scholar internet workflow
#' @examples
#' google_scholar("my search terms")

#' @export
google_scholar <- function(search_terms) {
  message("Opening Google Scholar search for \"", search_terms, "\" in browser")
  utils::browseURL(paste0("https://scholar.google.com/scholar?q=", URLencode(search_terms)))
}

