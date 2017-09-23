#' Search rdocumentation.org
#' @description Improve your workflow by searching rdocumentation.org directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords rdocumentation internet workflow
#' @examples
#' rdocumentation("my search terms")
#' rdoc("package I am looking for")

#' @export
rdocumentation <- function(search.terms) {
  message("Opening Rdocumentation search for \"", search.terms, "\" in browser")
  browseURL(paste0("https://www.rdocumentation.org/search?q=", URLencode(search.terms)))
}

#' @export
#' @rdname rdocumentation
rdoc <- rdocumentation
