#' Automatic Orthology Mapping Function
#'
#' @param from_species Source species (common name or latin name)
#' @param to_species Target species (common name or latin name)
#' @return A function that maps gene symbols between species
#' @export
make_mapfun_auto <- function(from_species, to_species) {
  from <- resolve_species(from_species)
  to <- resolve_species(to_species)

  function(genes) {
    from_db <- get(from$db)
    to_db <- get(to$db)

    gns <- AnnotationDbi::mapIds(
      from_db, keys = genes, column = "ENTREZID",
      keytype = "SYMBOL", multiVals = "first"
    )

    mapped <- AnnotationDbi::select(
      Orthology.eg.db, keys = gns, columns = to$org, keytype = from$org
    )

    naind <- is.na(mapped[[to$org]])
    to_symbol <- AnnotationDbi::mapIds(
      to_db, keys = as.character(mapped[[to$org]][!naind]),
      column = "SYMBOL", keytype = "ENTREZID", multiVals = "first"
    )

    out <- data.frame(from_gene = genes, mapped)
    out$to_symbol <- NA
    out$to_symbol[!naind] <- to_symbol
    out
  }
}
