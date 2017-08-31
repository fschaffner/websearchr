#' Search Google Scholar
#' @description Improve your workflow by searching Google Scholar directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords google scholar internet workflow
#' @examples
#' google.scholar("my search terms")

#' @export
google.scholar <- function(search.terms) {
  message("Opening Google Scholar search for \"", search.terms, "\" in browser.")
  utils::browseURL(paste0("https://scholar.google.com/scholar?q=", URLencode(search.terms)))
}

