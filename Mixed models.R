library(lme4)
library(car)

# ANADEV
# Full model
datafen_dev_full <- lmer(x1 ~ (1|gen) + loc + bloc:loc + (1|gen:loc), REML = T, data = datafen)

# Reduced model
datafen_dev_red <- lmer(x1 ~ loc + bloc:loc + (1|gen:loc), REML = T, data = datafen)

# ANADEV results
summary(datafen_dev_full)

# LTR (random effects)
LRT = 2*c(logLik(datafen_dev_full, REML=TRUE) - logLik(datafen_dev_red, REML=TRUE))
LRT
pchisq(as.numeric(LRT), df=1, lower.tail=F)

# Wald test (fixed effects)
Anova(datafen_dev_full)

# BLUPs
BLUP <- ranef(datafen_dev_full, condVar = TRUE)
BLUP 


