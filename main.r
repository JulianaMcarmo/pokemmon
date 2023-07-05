
library(dplyr)

# Carregar o arquivo CSV
pokemons <- read.csv("/cloud/project/Pokemon_full.csv")

# Filtrar por tipo "normal"
pokemons_filtrados <- filter(pokemons, type == "grass")

# Retornar apenas os nomess
nomes_pokemons_filtrados <- pokemons_filtrados$name

# Exibir os nomes dos pokemons filtrados
print(nomes_pokemons_filtrados)

