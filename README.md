# geneOrthology
An R package for cross-species gene orthology mapping.

## Install
```r
if (!require("devtools")) install.packages("devtools")
devtools::install_github("https://github.com/yudonglin506311858/geneOrthology")

install.packages('geneOrthology.tar.gz', repos = NULL, type = 'source')
```

<img width="1071" height="470" alt="image" src="https://github.com/user-attachments/assets/223a4b79-94a9-4b3c-8d37-42b482b2d703" />

## Usage
```r
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
```

## Results

<img width="816" height="675" alt="image" src="https://github.com/user-attachments/assets/4f466a18-5e55-49d2-8d15-9b0b3c31e459" />

<img width="615" height="741" alt="image" src="https://github.com/user-attachments/assets/26b64da2-1a5b-4492-9610-91c03c1d1a3f" />

