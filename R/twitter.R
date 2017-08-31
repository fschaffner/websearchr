#' Search Twitter
#' @description Improve your workflow by searching Twitter directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords wikipedia internet workflow
#' @examples
#' twitter("@rstudiotips")

#' @export
twitter <- function(search.terms) {
  message("Opening Twitter search for \"", search.terms, "\" in browser.")
  browseURL(paste0("https://twitter.com/search?q=", URLencode(search.terms)))
}

