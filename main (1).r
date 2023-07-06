
library(dplyr)

# Carregar o arquivo CSV
pokemons <- read.csv("/cloud/project/Pokemon_full.csv")

# Filtrar por tipo "normal"
pokemons_filtrados <- filter(pokemons, type == "grass")

# Retornar apenas os nomess
nomes_pokemons_filtrados <- pokemons_filtrados$name

# Exibir os nomes dos pokemons filtrados
print(nomes_pokemons_filtrados)

media_hp <- mean(pokemons_filtrados$hp)
desvio_padrao_hp <- sd(pokemons_filtrados$hp)

# Criar um vetor para armazenar os Z-scores
z_scores <- vector("numeric", length = nrow(pokemons_filtrados))

# Calcular o Z-score para cada Pokémon filtrado
for (i in 1:nrow(pokemons_filtrados)) {
  z_scores[i] <- (pokemons_filtrados$hp[i] - media_hp) / desvio_padrao_hp
  
  # Combinar o nome do Pokémon com o Z-score correspondente
  resultado <- paste("Pokémon:", pokemons_filtrados$nomes[i], "| Z-Score:", z_scores[i])
  
  # Exibir o resultado
  print(resultado)
}