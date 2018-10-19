#' Search Stackoverflow
#' @description Improve your workflow by searching Stackoverflow directly from R console.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords web workflow stackoverflow
#' @examples
#' stackoverflow("r date conversion")
#' so("r ggplot2 geom_smooth()")

#' @export
stackoverflow <- function(search_terms) {
  message("Opening Stackoverflow search for \"", search_terms, "\" in browser")
  browseURL(paste0("https://stackoverflow.com/search?q=", URLencode(search_terms)))
}

#' @export
#' @rdname stackoverflow
so <- stackoverflow
