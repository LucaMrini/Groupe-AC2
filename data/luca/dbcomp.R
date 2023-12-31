data1<- read.csv("data/baseplayer.csv")
tv<-tibble(
  `Comp`= c("Premier League","La Liga","Bundesliga","Serie A","Ligue 1"),
  `Revenue`= c(3518,2049,1460,1123,687)
)
Dates <- c("2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017", "2017-2018", "2018-2019", "2019-2020", "2020-2021", "2021-2022", "2022-2023", "2023-2024")
Bundesliga <- c("2.018", "2.275", "4.403", "4.865", "5.301", "5.440", "5.843", "3.208", "3.005", "3.149", "3.550", "3.450")
SerieA <- c("1.677", "1.700", "1.790", "1.917", "2.062", "2.239", "2.495", "2.057", "2.521", "2.350", "2.600", "2.050")
LaLiga <- c("1.868", "1.933", "2.053", "2.437", "2.865", "3.073", "3.378", "3.114", "2.953", "3.277", "3.300", "3.400")
Ligue1 <- c("1.297", "1.498", "1.418", "1.485", "1.643", "1.692", "1.902", "1.598", "1.614", "2.026", "2.100", "2.050")
Premierleague <- c("2,946", "3.897", "4.403", "4.865", "5.301", "5.440", "5.843", "5.123", "5.498", "6.442", "6.605", "6.662")

pib_comp <- data.frame(Bundesliga, LaLiga, SerieA, Ligue1, Premierleague, row.names = Dates)
transposed_pib_comp <- t(pib_comp)
colnames(transposed_pib_comp) <- row.names(pib_comp)

# Joining the datasets
combined_data <- bind_cols(tv, as_tibble(transposed_pib_comp))

combined_data <- combined_data %>%
left_join(data1%>% select(Player, Nation,Squad,Comp), by = "Comp")

combined_data<- combined_data %>%
  select(Comp,Player, Nation,Squad, everything())

