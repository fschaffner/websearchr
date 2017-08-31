#' Search Wikipedia
#' @description Improve your workflow by searching Wikipedia directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords wikipedia internet workflow
#' @examples
#' wikipedia("my search terms")
#' wp("my search terms")
#' @export

wikipedia <- function(search.terms) {
  message("Opening Wikipedia search for \"", search.terms, "\" in browser.")
  browseURL(paste0("https://en.wikipedia.org/w/index.php?search=", URLencode(search.terms)))
}

#' @export
#' @rdname wikipedia
wp <- wikipedia
