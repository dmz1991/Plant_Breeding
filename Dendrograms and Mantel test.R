library(dendextend)
library(ade4)

distSNP <- dist(SNP, method = "euclidean")
e1 <- as.dist(distSNP)
d1 <- hclust(e1,method="ward.D2")
  
distAFLP <- dist(AFLP, method = "euclidean")
e2<-as.dist(distAFLP)
d2<-hclust(e2,method="ward.D2")

tanglegram(d1 , d2, lab.cex = 1, edge.lwd = 1, margin_inner= 9,type = "r",
           center = T,  main_left="SNP",main_right="AFLP")

#### Mantel test

mantel.randtest(e1, e2, nrepet = 1000)
