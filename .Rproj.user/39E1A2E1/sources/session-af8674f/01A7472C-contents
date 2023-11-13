# Librairies
library(readr)
library(dplyr)
library(stringr)
library(tidyr)
library(lubridate)

# Pour délimiter les variables, et pour pouvoir enlever les ? de la base de données
data1 <- read_delim("data/skill.csv", delim = ";", 
                    escape_double = FALSE, locale = locale(encoding = "ISO-8859-1"), 
                    trim_ws = TRUE)

# Enlever les duplications des joueurs comme Jérémie Boga qui était là deux fois
data1 <- data1 %>%
  distinct(Player, .keep_all = TRUE)

# Ici, je ne garde que les joueurs ayant disputé au moins 9 matches durant la saison pour ne pas biaiser les résultats, on a choisi 9 en se disant que si un transfert est fait à la mi-saison, le joueur a joué au moins la moitié des matches de sa demi-saison.
data1 <- data1 %>%
  filter(MP >= 9)

# Ici, même chose qu'au dessus mais avec les minutes, on a décidé de prendre 405 minutes = 9*45, on part du principe que sur les 9 matches d'auparavant, les joueurs ont au moins joué une mi-temps par match
data1 <- data1 %>%
  filter(Min >= 405)

# Pour ne garder que les joueurs offensives donc qui commencent par Forward donc F
data1 <- data1 %>%
  filter(str_detect(Pos, "^F"))

# Solution complexe mais comme on arrive pas à changer les ć, on cherche tous les noms des joueurs qui posent problèmes et les renommons
# un par un, il n'yen a pas énormément
data1$data_problem <- grepl("\\?", data1$Player)
players_problem <- data1[data1$data_problem, ]
View(players_problem)

# Remplacer Edin Dzeko
# Renommer "Edin D?eko" en "Edin Džeko"
data1$Player <- sub("Edin D\\?eko", "Edin Džeko", data1$Player)

# Renommer "Alfre? Finnbogason" en "Alfreð Finnbogason"
data1$Player <- sub("Alfre\\? Finnbogason", "Alfreð Finnbogason", data1$Player)

# Renommer "Albert Gu?mundsson" en "Albert Guðmundsson"
data1$Player <- sub("Albert Gu\\?mundsson", "Albert Guðmundsson", data1$Player)

# Renommer "Josip Ili?i?" en "Josip Iličić"
data1$Player <- sub("Josip Ili\\?i\\?", "Josip Iličić", data1$Player)

# Renommer "Krzysztof Pi?tek" en "Krzysztof Piątek"
data1$Player <- sub("Krzysztof Pi\\?tek", "Krzysztof Piątek", data1$Player)

# Renommer "Przemys?aw P?acheta" en "Przemysław Płacheta"
data1$Player <- sub("Przemys\\?aw P\\?acheta", "Przemysław Płacheta", data1$Player)

# Renommer "Duan Vlahovi?" en "Dušan Vlahović", manière différente car problème différent, le nom présente un espace pour on ne sait quelle raison
data1$Player <- ifelse(data1$Rk == 2801, "Dušan Vlahović", data1$Player)

# Renommer "Nikola Vla?i?" en "Nikola Vlašić", manière différente car problème différent, le nom présente un espace pour on ne sait quelle raison
data1$Player <- ifelse(data1$Rk == 2803, "Nikola Vlašić", data1$Player)

# Renommer "Mat?j Vydra" en "Matěj Vydra"
data1$Player <- sub("Mat\\?j Vydra", "Matěj Vydra", data1$Player)

# Renommer "Milan ?uri?" en "Milan Đurić"
data1$Player <- sub("Milan \\?uri\\?", "Milan Đurić", data1$Player)

# Renommer et ajouter aux derniers auquel il manquait le ć
data1$Player <- gsub("\\?", "ć", data1$Player)
View(data1)

# Load du dataset fifa 21 pour ajouter les colonnes Height et Weight
data_fifa_21 <- read_csv("data/fifa21.csv")
View(data_fifa_21)

# faire en sorte d'avoir Player dans les deux bases de données pour faciliter le fait de joindre
data_fifa_21 <- data_fifa_21 %>%
  rename(Player = Name)

# Rajouter le poids et la taille grâce à la deuxième base de données
data1 <- data1 %>%
  left_join(data_fifa_21 %>% select(Player, Height, Weight), by = "Player")

# Afin d'avoir une liste de quel joueur n'a pas sa taille et poids
height_na <- data1 %>%
  filter(is.na(Height))

# Tentative de séparer les noms pour essayer de diminuer les NA
data1 <- data1 %>%
  separate(Player, into = c("Surname", "Name"), sep = " ", extra = "merge")

data_fifa_21 <- data_fifa_21 %>%
  separate(Player, into = c("Surname", "Name"), sep = " ", extra = "merge")

# Joindre pour diminuer les NA en utilisant cette fois uniquement le Name venant de Player, pour la raison que certains joueurs ont des noms composés
# et que certains prénoms comme Sehrou/Serhou Guirassy sont différents dans les deux bases de données
data1 <- data1 %>%
  left_join(data_fifa_21 %>% select(Name, Height, Weight), by = "Name") %>%
  mutate(
    Height = coalesce(Height.x, Height.y),
    Weight = coalesce(Weight.x, Weight.y)
  ) %>%
  select(-Height.x, -Weight.x, -Height.y, -Weight.y)

data1 <- data1 %>%
  distinct(Name, .keep_all = TRUE)

# Mettre en avant les tailles et poids pour ne pas avoir à passer 200 colonnes
data1 <- data1 %>%
  select(Rk, Surname, Name, Nation, Pos, Squad, Comp, Age, Born, Height, Weight, everything())

# Afin d'avoir une liste de quel joueur n'a pas sa taille et poids
height_na <- data1 %>%
  filter(is.na(Height))

View(height_na)

# Histoire d'avoir une nouvelle colonne en commun "Born", qui est l'année de naissance
data_fifa_21 <- data_fifa_21 %>%
  mutate(Born = year(mdy(BirthDate)))

# Renommer pour avoir en commun dans les deux bases de données
data_fifa_21 <- data_fifa_21 %>%
  rename(Squad = Club)

data1 <- data1 %>%
  left_join(data_fifa_21 %>% select(Born, Squad, Height, Weight), by = c("Born", "Squad")) %>%
  mutate(
    Height = coalesce(Height.x, Height.y),
    Weight = coalesce(Weight.x, Weight.y)
  ) %>%
  select(-Height.x, -Weight.x, -Height.y, -Weight.y)

# Mettre en avant les tailles et poids pour ne pas avoir à passer 200 colonnes
data1 <- data1 %>%
  select(Rk, Surname, Name, Nation, Pos, Squad, Comp, Age, Born, Height, Weight, everything())

# Afin d'enlever les duplications faites par les étapes au dessus
data1 <- data1 %>%
  distinct(Name, .keep_all = TRUE)

# Afin d'avoir une liste de quel joueur n'a pas sa taille et poids
height_na <- data1 %>%
  filter(is.na(Height))

# Arrivé ici, on a compris qu'en essayant de différentes manières, que ce soit par différentes clés communes entre les bdd comme "Born", en ayant séparé "Player"
# on arrivera toujours pas à remplacer les NA de certains joueurs pour différentes raisons, notamment qu'entre les bdd certains noms sont complets, d'autres que Prénoms et Noms
# Il y aussi des problèmes avec des noms composés donc avec des "-", mais aussi des Prénoms et Noms différents entres les bdd comme "Sehrou Guirassy" et "Serhou Guirassy"
# On est donc parti du principe qu'avec la liste de height_na qu'on a la plupart des joueurs ne sont pas d'une énorme importance pour l'analyse future
# ainsi nous avons décidé de mettre manuellement les valeurs pour les joueurs nous intéressant et de drop les NA restantes.

# Comme critère de choix des joueurs à faire individuellement, nous avons pris le meilleur Goals (90') de chaque championnat

# Heung-Min Son
data1 <- data1 %>%
  mutate(
    Height = ifelse(Rk == 1181, 183, Height),
    Weight = ifelse(Rk == 1181, 76, Weight)
  )

# Arnaut Danjuma (Groenevelt)
data1 <- data1 %>%
  mutate(
    Height = ifelse(Rk == 1074, 187, Height),
    Weight = ifelse(Rk == 1074, 74, Weight)
  )

# Sambou Soumano
data1 <- data1 %>%
  mutate(
    Height = ifelse(Rk == 2542, 182, Height),
    Weight = ifelse(Rk == 2542, 70, Weight)
  )

# Sasa Kalajdzic
data1 <- data1 %>%
  mutate(
    Height = ifelse(Rk == 1326, 200, Height),
    Weight = ifelse(Rk == 1326, 83, Weight)
  )

# Felix Afena-Gyan
data1 <- data1 %>%
  mutate(
    Height = ifelse(Rk == 21, 175, Height),
    Weight = ifelse(Rk == 21, 75, Weight)
  )

# Enlever les NA restants
data1 <- data1 %>%
  filter(!is.na(Height) & !is.na(Weight))

# Afin d'isoler les attaquants de Premier League
premier_league_players <- data1 %>%
  filter(Comp == "Premier League")


# Afin d'isoler les attaquants de Bundesliga
bundesliga_players <- data1 %>%
  filter(Comp == "Bundesliga")



# Afin d'isoler les attaquants de Ligue 1
ligue_1_players <- data1 %>%
  filter(Comp == "Ligue 1")



# Afin d'isoler les attaquants de Série A
serie_a_players <- data1 %>%
  filter(Comp == "Serie A")



# Afin d'isoler les attaquants de La Liga
la_liga_players <- data1 %>%
  filter(Comp == "La Liga")


