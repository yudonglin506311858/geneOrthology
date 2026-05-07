\name{geneOrthology-package}
\alias{geneOrthology-package}
\alias{geneOrthology}
\docType{package}
\title{
Gene Orthology Mapping Between Species
}
\description{
Provides automatic orthology mapping between gene symbols across 37 common species using Orthology.eg.db and organism annotation databases.
}
\details{
The \code{geneOrthology} package allows users to easily convert gene symbols from one species to another using orthologous relationships.
It supports human, mouse, rat, zebrafish, fly, worm, yeast, plants, and many other model organisms.

Key functions:
\itemize{
  \item \code{\link{make_mapfun_auto}}: Create an orthology mapping function between two species.
  \item \code{\link{resolve_species}}: Resolve species name to database information.
  \item \code{\link{species_table}}: A built-in table of supported species.
}
}
\author{
A B \email{a@b.com}
}

\references{
Orthology.eg.db, AnnotationDbi, organismdbi databases.
}

\keyword{ package }
\keyword{ orthology }
\keyword{ gene }
\keyword{ mapping }
