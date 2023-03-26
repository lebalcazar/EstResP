library(readxl)
alumnos <- read_xls("data/lista_estudiantes/ListaAlumnos.xls")

# seleción aleatorio
sample(x = alumnos$Nombres, 1, replace = FALSE)

# lista aleatoria
alumnos %>% 
slice_sample(prop = 1)


