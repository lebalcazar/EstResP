library(tidyverse)  # arreglo de datos
library(car)  # para la prueba de levene

# considerar el dataset sleep
datasets::sleep    

# modelo lineal multiple 
datasets::stack.loss; datasets::stack.x

# 5 experimentos y 20 corridas (km/seg) ejemplo con aov
datasets::morley




# ANOVA con 2 factores
# dos variables independientes categóricas.
leveneTest()



michelson <- transform(morley,
                       Expt = factor(Expt), Run = factor(Run))
xtabs(~ Expt + Run, data = michelson)  # 5 x 20 balanced (two-way)
plot(Speed ~ Expt, data = michelson,
     main = "Speed of Light Data", xlab = "Experiment No.")
fm <- aov(Speed ~ Run + Expt, data = michelson)
summary(fm)
fm0 <- update(fm, . ~ . - Run)
anova(fm0, fm)