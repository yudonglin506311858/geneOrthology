\name{resolve_species}
\alias{resolve_species}
\title{Resolve Species Name to Database Info}
\usage{
resolve_species(x)
}
\arguments{
\item{x}{character; species common name, latin name or annotation db name}
}
\value{
A data frame with matched species name, latin organism name and corresponding OrgDb package name.
}
\description{
Match input species keyword against built-in \code{species_table},
return exact species database record; stop if unknown species.
}
\examples{
\dontrun{
resolve_species("human")
resolve_species("Homo_sapiens")
}
}
\author{Your Name}
