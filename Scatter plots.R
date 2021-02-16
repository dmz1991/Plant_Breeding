library(Rcmdr)

# Add density distribution as marginal plot
library(ggpubr)
library(ggExtra)
library(ggplot2)
library(ggrepel)
attach(dados)


tiff(filename = "cor - mantel", width = 10, height = 10, units = "cm", pointsize = 12,
     compression = c("lzw"), bg = "white", res = 600, family = "", restoreConsole = TRUE)

p <- ggscatter(dados, x = "SNP", y = "AFLP", size = 3, alpha = 1, ggtheme = theme_bw(), shape = 16, color = "black", label = ) + 
ylab("Euclidean distance (AFLP)") + xlab("Euclidean distance (SNP)") + geom_smooth(method=lm)

# Change marginal plot type
ggMarginal(p, type = "boxplot", col = "black", fill = "lightgrey")

dev.off()

