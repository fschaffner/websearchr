#' Search Stackoverflow
#' @description Improve your workflow by searching Stackoverflow directly from R console.
#' @param search.terms Search terms encapsulated in " ".
#' @keywords web workflow stackoverflow
#' @examples
#' stackoverflow("r date conversion")
#' so("r ggplot2 geom_smooth()")

#' @export
stackoverflow <- function(search.terms) {
  message("Opening Stackoverflow search for \"", search.terms, "\" in browser")
  browseURL(paste0("https://stackoverflow.com/search?q=", URLencode(search.terms)))
}

#' @export
#' @rdname stackoverflow
so <- stackoverflow
