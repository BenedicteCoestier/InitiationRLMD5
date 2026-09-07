# ==============================================================================
# SÉANCE 1 : PREMIERS PAS AVEC R ET RSTUDIO
# ==============================================================================
# Astuce : Pour exécuter une ligne de code, placez le curseur dessus 
# et appuyez sur Ctrl + Entrée (Windows/Linux) ou Cmd + Entrée (Mac).
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. R COMME CALCULATRICE
# ------------------------------------------------------------------------------

# Des calculs simples
2 + 2
10 / 2
3 ^ 2

# ------------------------------------------------------------------------------
# 2. LES OBJETS ET L'AFFECTATION
# ------------------------------------------------------------------------------
# En R, on stocke de l'information dans des objets grâce à la flèche `<-`

age <- 20
age

# On peut faire des opérations sur les objets
age_dans_10_ans <- age + 10
age_dans_10_ans

# ------------------------------------------------------------------------------
# 3. LES VECTEURS (Combinaisons de données)
# ------------------------------------------------------------------------------
# La fonction c() permet de combiner des éléments

prenoms <- c("Alice", "Bob", "Charlie", "Diana")
notes <- c(15.5, 12.0, 18.0, 14.5)

# Calculer des statistiques simples
mean(notes) # Moyenne de la classe
max(notes)  # Note maximale

# ------------------------------------------------------------------------------
# 4. LES TABLEAUX DE DONNÉES (Data Frames)
# ------------------------------------------------------------------------------
# Un data.frame regroupe des variables sous forme de colonnes

etudiants <- data.frame(
  nom = prenoms,
  note = notes,
  reussite = notes >= 10
)

# Afficher le tableau complet dans la console
etudiants

# Consulter une variable spécifique avec le symbole `$`
etudiants$note

# ------------------------------------------------------------------------------
# 5. CHARGEMENT D'UN PACKAGE ET VISUALISATION
# ------------------------------------------------------------------------------
# Chargement du package de visualisation ggplot2
library(ggplot2)

# Utilisation d'un jeu de données inclus dans R : `penguins` ou `iris`
# Ici, nous utilisons `iris` (mesures de fleurs)
head(iris)

# Création d'un premier graphique avec ggplot2
ggplot(data = iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point(size = 3, alpha = 0.8) +
  labs(
    title = "Relation entre la longueur des sépales et des pétales",
    subtitle = "Jeu de données Iris",
    x = "Longueur des sépales (cm)",
    y = "Longueur des pétales (cm)",
    color = "Espèce"
  ) +
  theme_minimal()

# ==============================================================================
# BRAVO ! Vous venez d'exécuter votre premier script R.
# ==============================================================================
