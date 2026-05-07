\name{species_table}
\alias{species_table}
\title{Supported Species Lookup Table}
\format{
A data frame with 3 columns:
\itemize{
\item{\code{name}}{common simple species name}
\item{\code{org}}{latin organism underscore name}
\item{\code{db}}{corresponding OrgDb package name}
}
}
\description{
Full table of all supported species for orthology mapping,
including human, mouse, rat, livestock, fish, insect, plant, microbe etc.
}
\examples{
data(species_table)
head(species_table)
}
\author{Your Name}
