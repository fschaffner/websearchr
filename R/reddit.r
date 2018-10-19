#' Search Reddit
#' @description Improve your workflow by searching Reddit directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords reddit internet workflow
#' @examples
#' reddit("my search terms")

#' @export
reddit <- function(search_terms) {
  message("Searching Reddit for \"", search_terms, "\" in browser")
  browseURL(paste0("https://www.reddit.com/search?q=", URLencode(search_terms)))
}
