#' Search Qwant
#' @description Improve your workflow by searching Qwant directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @param lang In which language Qwant should be accessed. One of c("en", "de", "es" "fr") for English, German, Spanish and French, respectively.
#' @keywords qwant internet workflow
#' @examples
#' qwant("my search terms")
#' @export

qwant <- function(search_terms, lang = c("en", "de", "es", "fr")) {

  if (missing(lang))
    lang <- Sys.getenv("LANG")

  # if system language contains "en" use English version
  if (grepl("en", lang)) {
    message("Opening Qwant search for \"", search_terms, "\" in browser")
    browseURL(paste0("https://www.qwant.com/?q=", URLencode(search_terms), "&l=en"))
  }

  # if system language contains "de" use German version
  else if (grepl("de", lang)) {
    message("\u00D6ffne Qwant Suche f\u00FCr \"", search_terms, "\" im Browser")
    browseURL(paste0("https://www.qwant.com/?q=", URLencode(search_terms), "&l=de"))
  }

  # if system language contains "es" use Spanish Wikipedia version
  else if (grepl("es", lang)) {
    message("Abriendo b\u00FAsqueda de Qwant \"", search_terms, "\" en browser")
    browseURL(paste0("https://www.qwant.com/?q=", URLencode(search_terms), "&l=es"))
  }

  # if system language contains "fr" use French Wikipedia version
  else if (grepl("fr", lang)) {
    message("Ouvrir Wikipedia recherche pour \"", search_terms, "\" en navigateur")
    browseURL(paste0("https://www.qwant.com/?q=", URLencode(search_terms), "&l=fr"))
  }

  # if "lang" is not specified and default system language is not
  # English, German, Spanish or French, use the English version
  else {
    message("Opening Qwant search for \"", search_terms, "\" in browser")
    browseURL(paste0("https://www.qwant.com/?q=", URLencode(search_terms), "&l=en"))
  }

}
