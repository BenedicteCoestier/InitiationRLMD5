# ==============================================================================
# Fichier d'installation des packages R pour cours d'initiation
# Utilisable sur MyBinder, Posit Cloud ou en local
# ==============================================================================

# Option : Définition du miroir CRAN officiel par défaut
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Liste des packages nécessaires pour le cours
packages_cours <- c(
  
  # --- 1. Cœur du travail sur les données (Tidyverse) ---
  "dplyr",        # Manipulation de données (filter, select, mutate...)
  "tidyr",        # Nettoyage et restructuration des tables
  "readr",        # Importation de fichiers texte / CSV
  "tibble",       # Tableaux de données modernes
  "purrr",        # Programmation fonctionnelle légère
  "stringr",      # Manipulation de chaînes de caractères
  "forcats",      # Gestion des variables qualitatives (facteurs)
  
  # --- 2. Importation & Exportation ---
  "readxl",       # Lecture des fichiers Excel (.xls, .xlsx)
  "writexl",      # Écriture simple de fichiers Excel
  "haven",        # Importation de données SPSS, SAS, Stata
  
  # --- 3. Visualisation de données ---
  "ggplot2",      # La référence pour les graphiques
  "scales",       # Mise en forme des axes (pourcentages, monnaies)
  "patchwork",    # Combinaison de plusieurs graphiques ggplot2
  "ggthemes",     # Thèmes visuels supplémentaires
  "RColorBrewer", # Palettes de couleurs adaptées
  
  # --- 4. Statistiques descriptives & Résumés ---
  "summarytools", # Tableaux récapitulatifs complets
  "janitor",      # Nettoyage de noms de colonnes et tables croisées (`tabyl`)
  
  # --- 5. Reporting & Reproductibilité ---
  "rmarkdown",    # Rédiger des rapports interactifs / PDF / HTML
  "knitr"         # Compilation de documents R Markdown
)

# Fonction d'installation sécurisée avec gestion des erreurs
installer_si_absent <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message(paste0("--> Installation du package : ", pkg))
    tryCatch(
      install.packages(pkg, Ncpus = parallel::detectCores()),
      error = function(e) {
        warning(paste0("Échec de l'installation du package : ", pkg))
      }
    )
  } else {
    message(paste0("OK : ", pkg, " est déjà installé."))
  }
}

# Exécution de l'installation sur la liste des packages
message("=== DÉBUT DE L'INSTALLATION DES PACKAGES DU COURS ===")
invisible(sapply(packages_cours, installer_si_absent))
message("=== INSTALLATION TERMINÉE AVEC SUCCÈS ===")
