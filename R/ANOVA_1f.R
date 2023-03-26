# cargamos la librería
library(tidyverse)

# ANOVA con un factor
# cargar la libraría iris

# modificamos el tipo de datos iris: data frame a tibble
iris <- as_tibble(iris)

# cramos un gráfico del largo del sépalo de cada especie
# utilizamos ggplot2
iris %>% 
  ggplot(
    aes(Species, Sepal.Length)
    ) +
   geom_boxplot()

# ANOVA, aov
iris %>% 
  aov(formula = Sepal.Length~Species, data = .)

# creamos un objeto para ANOVA
anova_iris <- iris %>% 
  aov(formula = Sepal.Length~Species, data = .)

# resumen del ANOVA
summary(anova_iris)

# comprobrar estadísticamente de que la medias son diferente
TukeyHSD(anova_iris)


