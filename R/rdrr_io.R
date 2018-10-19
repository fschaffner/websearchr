#' Search rdrr.io
#' @description Improve your workflow by searching rdrr.io directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords rdrr.io internet workflow
#' @examples
#' rdrr_io("my search terms")
#' rdrr("my search terms")

#' @export
rdrr_io <- function(search_terms) {
  message("Opening rdrr.io search for \"", search_terms, "\" in browser")
  browseURL(paste0("https://rdrr.io/search?q=", URLencode(search_terms)))
}

#' @export
#' @rdname rdrr_io
rdrr <- rdrr_io
