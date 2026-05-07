\name{make_mapfun_auto}
\alias{make_mapfun_auto}
\title{Create Automatic Gene Orthology Mapping Function}
\usage{
make_mapfun_auto(from_species, to_species)
}
\arguments{
\item{from_species}{character; source species name}
\item{to_species}{character; target species name}
}
\value{
Returns a function that takes a vector of gene symbols and returns
a mapped data frame with original gene, orthology ENTREZ ID and target gene symbol.
}
\description{
Build a closure function to map gene symbols from one species to another
via ENTREZ ID orthology using \code{Orthology.eg.db} and corresponding OrgDb.
}
\examples{
\dontrun{
f <- make_mapfun_auto("human", "mouse")
f(c("TNF","IL1B"))
}
}
\author{Your Name}
