#' Search Twitter
#' @description Improve your workflow by searching Twitter directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search.terms Search terms encapsulated in " ".
#' @param lang Specify in which language Twitter should be accessed One of c("en", "de", "es" "fr") for English, German, Spanish and French, respectively.
#' @keywords wikipedia internet workflow
#' @examples
#' twitter("rstudiotips")

#' @export
twitter <- function(search.terms, lang = c("en", "de", "es", "fr")) {
  
  if (missing(lang))
    lang <- Sys.getenv("LANG")
  
  # if system language contains "en" use English Twitter version
  if (grepl("en", lang)) {
    message("Opening Twitter search for \"", search.terms, "\" in browser")
    browseURL(paste0("https://twitter.com/search?q=", URLencode(search.terms), "&lang=en"))
  }
  
  # if system language contains "de" use German Twitter version
  else if (grepl("de", lang)) {
    message("\u00D6ffne Twitter Suche f\u00FCr \"", search.terms, "\" im Browser")
    browseURL(paste0("https://twitter.com/search?q=", URLencode(search.terms), "&lang=de"))
  }
  
  # if system language contains "es" use Spanish Twitter version
  else if (grepl("es", lang)) {
    message("Abrir b\u00FAsqueda de Twitter para \"", search.terms, "\" en buscador")
    browseURL(paste0("https://twitter.com/search?q=", URLencode(search.terms), "&lang=es"))
  }
  
  # if system language contains "fr" use French Twitter version
  else if (grepl("fr", lang)) {
    message("Ouvrir Twitter recherche pour \"", search.terms, "\" en navigateur")
    browseURL(paste0("https://twitter.com/search?q=", URLencode(search.terms), "&lang=fr"))
  }
  
  # if "lang" is not specified and default system language is not
  # English, German, Spanish or French, use the English version
  else {
    message("Opening Twitter search for \"", search.terms, "\" in browser")
    browseURL(paste0("https://twitter.com/search?q=", URLencode(search.terms), "&lang=en"))
  }
}


