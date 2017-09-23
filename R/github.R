#' Search GitHub
#' @description Improve your workflow by searching GitHub directly from R console.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords github internet workflow
#' @examples
#' github("ggplot extensions")

#' @export
github <- function(search.terms) {
  message("Opening GitHub search for \"", search.terms, "\" in browser")
  browseURL(paste0("https://github.com/search?q=", URLencode(search.terms)))
}
