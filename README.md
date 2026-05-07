# geneOrthology
An R package for cross-species gene orthology mapping.

## Install
```r
if (!require("devtools")) install.packages("devtools")
devtools::install_github("https://github.com/yudonglin506311858/geneOrthology")
```r



install.packages('geneOrthology.tar.gz', repos = NULL, type = 'source')

library(geneOrthology)
library(Orthology.eg.db)
library(org.Hs.eg.db)
library(org.Mm.eg.db)

# Map human genes to mouse
mapfun <- make_mapfun_auto("human", "mouse")
result <- mapfun(c("TP53", "BRAF","GATA1"))
print(result)

# Map human genes to mouse
mapfun <- make_mapfun_auto("mouse","human")
result <- mapfun(c("Aanat","Aatk","Abca1","Abca4"))
print(result)


#######transition of all genes################
#mouse → human
mapfun <- make_mapfun_auto("mouse", "human")
z <- AnnotationDbi::keys(org.Mm.eg.db, "SYMBOL")
result <- mapfun(z)
head(result)
dim(result)
write.csv(result,"convertMouseToHuman.csv")



#human → mouse
mapfun <- make_mapfun_auto("human", "mouse")
z <- AnnotationDbi::keys(org.Hs.eg.db, "SYMBOL")
result <- mapfun(z)
head(result)
dim(result)
write.csv(result,"convertHumanToMouse.csv")

