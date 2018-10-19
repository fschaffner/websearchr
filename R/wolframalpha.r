#' Search WolframAlpha
#' @description Improve your workflow by searching WolframAlpha directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords wolframalpha internet workflow
#' @examples
#' wolfram("my search terms")

#' @export
wolfram <- function(search_terms) {
  message("Searching WolframAlpha for \"", search_terms, "\" in browser")
  browseURL(paste0("https://www.wolframalpha.com/input/?i=", URLencode(search_terms)))
}
