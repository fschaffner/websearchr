#' Search Wikipedia
#' @description Improve your workflow by searching Wikipedia directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @param lang In which language Wikipedia should be accessed. One of c("en", "de", "es" "fr") for English, German, Spanish and French, respectively.
#' @keywords wikipedia internet workflow
#' @examples
#' wikipedia("my search terms")
#' wp("my search terms")
#' @export

wikipedia <- function(search_terms, lang = c("en", "de", "es", "fr")) {

  if (missing(lang))
    lang <- Sys.getenv("LANG")

  # if system language contains "en" use English Wikipedia version
  if (grepl("en", lang)) {
    message("Opening Wikipedia search for \"", search_terms, "\" in browser")
    browseURL(paste0("https://en.wikipedia.org/w/index.php?search=", URLencode(search_terms)))
  }

  # if system language contains "de" use German Wikipedia version
  else if (grepl("de", lang)) {
    message("\u00D6ffne Wikipedia Suche f\u00FCr \"", search_terms, "\" im Browser")
    browseURL(paste0("https://de.wikipedia.org/w/index.php?search=", URLencode(search_terms)))
  }

  # if system language contains "es" use Spanish Wikipedia version
  else if (grepl("es", lang)) {
    message("Abriendo b\u00FAsqueda de Wikipedia \"", search_terms, "\" en browser")
    browseURL(paste0("https://es.wikipedia.org/w/index.php?search=", URLencode(search_terms)))
  }

  # if system language contains "fr" use French Wikipedia version
  else if (grepl("fr", lang)) {
    message("Ouvrir Wikipedia recherche pour \"", search_terms, "\" en navigateur")
    browseURL(paste0("https://fr.wikipedia.org/w/index.php?search=", URLencode(search_terms)))
  }

  # if "lang" is not specified and default system language is not
  # English, German, Spanish or French, use the English version
  else {
    message("Opening Wikipedia search for \"", search_terms, "\" in browser")
    browseURL(paste0("https://en.wikipedia.org/w/index.php?search=", URLencode(search_terms)))
  }
}



#' @export
#' @rdname wikipedia
wp <- wikipedia
