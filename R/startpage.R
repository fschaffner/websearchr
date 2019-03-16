#' Search Startpage
#' @description Improve your workflow by searching with startpage.com directly from the console without having to switching to the browser and opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords startpage internet workflow
#' @examples
#' startpage("my search terms")
#' sp("r-project")

#' @export
startpage <- function(search_terms) {
  message("Opening Startpage search for \"", search_terms, "\" in browser")
  browseURL(paste0("https://www.startpage.com/do/search?q=", URLencode(search_terms)))
}

#' @export
#' @rdname startpage
sp <- startpage
