#' Search r-bloggers.com
#' @description Improve your workflow by searching r-bloggers.com directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords r-bloggers internet workflow
#' @examples
#' r_bloggers("my search terms")

#' @export
r_bloggers <- function(search_terms) {
  message("Opening r-bloggers.com search for \"", search_terms, "\" in browser")
  browseURL(paste0("https://www.r-bloggers.com/?q=", URLencode(search_terms)))
}

