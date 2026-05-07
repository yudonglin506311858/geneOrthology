#' Resolve Species Name
#'
#' @param x Species name (common, latin, or db name)
#' @return data frame with species info
#' @export
resolve_species <- function(x) {
  x <- tolower(x)
  hit <- species_table[
    species_table$name == x |
    species_table$org == tolower(species_table$org) |
    species_table$db == x,
  ]
  if (nrow(hit) == 0) stop("Unknown species: ", x)
  return(hit)
}
