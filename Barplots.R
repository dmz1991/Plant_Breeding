library(ggplot2)

Dataset %>% 
  ggplot(aes(reorder(cult, LNTI), LNTI)) + 
  geom_col(aes(fill = LNTI)) + 
  scale_fill_gradient2(low = "green", 
                       high = "darkgreen") + 
                       coord_flip() +
    ylim("NULL")+
    labs(x = "")+
    theme_bw()


library(ggstatsplot)

# producing the correlation matrix
ggstatsplot::ggcorrmat(
  data = Dataset, 
  type = "spearman",
  matrix.type = "lower",
  conf.level = 0.95
  )


