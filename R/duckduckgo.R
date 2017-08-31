#' Search Duckduckgo
#' @description Improve your workflow by searching with duckduckgo.com directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords duckduckgo internet workflow
#' @examples
#' duckduckgo("my search terms")
#' ddg("r-project")

#' @export
duckduckgo <- function(search.terms) {
  message("Opening Duckduckgo search for \"", search.terms, "\" in browser.")
  browseURL(paste0("https://duckduckgo.com/?q=", URLencode(search.terms)))
}

#' @export
#' @rdname duckduckgo
ddg <- duckduckgo