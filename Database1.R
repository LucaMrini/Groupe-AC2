player1 <- read.csv("/Users/lucamarini/Documents/GitHub/2021-2022 Football Player Stats.csv",
                    header = TRUE,sep = ";" )
player2 <- read.csv("/Users/lucamarini/Documents/GitHub/2021-2022 Football Player Stats 2.csv",
               header = TRUE,sep = ";" )
View(player1)
View(player2)
dftest = player2[1:100,c(2:15)]
dftest2 <- player2$Age * df$Min
dftest$Shots*90
View(dftest2)