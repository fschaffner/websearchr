#' Search Google
#' @description Improve your workflow by searching google directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords google internet workflow
#' @examples
#' google("my search terms")

#' @export
google <- function(search_terms) {
  message("Opening Google search for \"", search_terms, "\" in browser")
  browseURL(paste0("https://www.google.com/search?q=", URLencode(search_terms)))
}

