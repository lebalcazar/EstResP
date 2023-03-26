
# Análisis de frecuencia 
library(tidyverse)

af <- read.csv("data/DistribucionDeFrecuencias.csv")

af_tidy <- 
  af %>% 
  dplyr::select(starts_with("Nivel")) %>% 
  pivot_longer(cols = 1:5, values_to = "nivel") %>% 
  transmute(parcela = 1:nrow(.), nivel)


frecuencias <- table(af_tidy$nivel)


# tabla <- 
as.data.frame.table(frecuencias) %>% 
  transmute(Perturbacion = Var1, f = Freq) %>% 
  mutate(Perturbacion = factor(Perturbacion, 
                               levels = c("ninguno", "leve",
                                          "moderado", "severo")
                               )
  ) %>% 
  arrange(Perturbacion) %>% 
  mutate(fr = f/sum(f),
         F = cumsum(f), 
         Fr = cumsum(fr))
  
    

  
