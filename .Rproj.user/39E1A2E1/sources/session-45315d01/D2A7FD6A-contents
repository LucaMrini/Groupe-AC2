world <- read.csv("data/World.csv")
gdp <- read.csv("data/gdp.csv")
data1
#print(unique(world$Country.Code))
#print(unique(gdp$Country))
#print(unique(data1$Nation))
# rennomer et convertir
 # ajouter une collone abrev et convertir 
 # convertir

Nation <- c("NGA", "ENG", "SCO", "FRA", "GHA", "ARG", "ESP", "BRA", "SWE", "AUT",
            "JPN", "COL", "CMR", "CZE", "MLI", "CIV", "MAR", "ALB", "DEN", "CRO",
            "URU", "MEX", "ISR", "CAN", "BIH", "BEN", "HON", "MKD", "SUI", "POR",
            "RUS", "ISL", "NOR", "KOR", "PHI", "IRL", "SVN", "MNE", "ZIM", "SLE",
            "TUN", "CHN", "POL", "UKR", "EGY", "RSA", "ANG", "USA", "SUR", "GER",
            "ALG", "ITA", "BEL", "NED","REU", "GAB", "SEN", "JAM", "GAM", "GUI", "TOG", "ZAM", "MTQ", "CHA", 
            "FIN", "KVX", "LUX", "VEN", "PAR", "CHI", "UZB", "TUR", "SRB", "COD", "NZL")

abre <- c("Nigeria", "United Kingdom", "United Kingdom", "France", "Ghana", "Argentina", "Spain", "Brazil", "Sweden",
          "Austria", "Japan", "Colombia", "Cameroon", "Czech Republic", "Mali", "Côte d'Ivoire", "Morocco",
          "Albania", "Denmark", "Croatia", "Uruguay", "Mexico", "Israel", "Canada", "Bosnia and Herzegovina", 
          "Benin", "Honduras", "Macedonia, Former Yugoslav Republic of", "Switzerland", "Portugal", "Russia"
          , "Iceland", "Norway", "Korea", "Philippines", "Ireland", "Slovenia", "Montenegro", "Zimbabwe", "Sierra Leone",
          "Tunisia", "China", "Poland", "Ukraine", "Egypt", "South Africa", "Angola", "United States", "Suriname", 
          "Germany", "Algeria", "Italy", "Belgium", "Netherlands","Réunion", "Gabon", "Senegal", "Jamaica", "The Gambia", 
          "Guinea", "Togo", "Zambia", "Martinique", "Chad","Finland", "Kosovo", "Luxembourg", "Venezuela", 
          "Paraguay", "Chile", "Uzbekistan", "Turkey", "Serbia", "Congo, Democratic Republic of", "New Zealand")
abre2 <- c("Nigeria", "United Kingdom", "United Kingdom", "France", "Ghana", "Argentina", "Spain", "Brazil", "Sweden",
          "Austria", "Japan", "Colombia", "Cameroon", "Czech Republic", "Mali", "Cote d'Ivoire", "Morocco",
          "Albania", "Denmark", "Croatia", "Uruguay", "Mexico", "Israel", "Canada", "Bosnia and Herzegovina", 
          "Benin", "Honduras", "North Macedonia", "Switzerland", "Portugal", "Russian Federation"
          , "Iceland", "Norway", "Korea, Rep.", "Philippines", "Ireland", "Slovenia", "Montenegro", "Zimbabwe", "Sierra Leone",
          "Tunisia", "China", "Poland", "Ukraine", "Egypt, Arab Rep.", "South Africa", "Angola", "United States", "Suriname", 
          "Germany", "Algeria", "Italy", "Belgium", "Netherlands","Réunion", "Gabon", "Senegal", "Jamaica", "Gambia, The", 
          "Guinea", "Togo", "Zambia", "Martinique", "Chad","Finland", "Kosovo", "Luxembourg", "Venezuela, RB", 
          "Paraguay", "Chile", "Uzbekistan", "Turkiye", "Serbia", "Congo, Dem. Rep.", "New Zealand")
test<-data.frame(Nation,abre,abre2)
test <- test %>%
left_join(data1%>%select(Surname,Name,Nation,Squad,Comp),by="Nation")
  
gdp <- gdp%>%
  rename(abre=Country)
 
 test <- test %>%
  left_join(gdp,by="abre")
plot_missing(test)


world<- world %>%
  rename(abre2=Country.Name)

test<-test %>%
  left_join(world,by="abre2")
plot_missing(test)

test <- test[, !names(test) %in% c("abre", "abre2","Country.Code")]
test <- na.omit(test)
plot_missing(test)
rows_with_na <- test[!complete.cases(test), ]
