
library(tibble)

tv <- tibble(
  `Comp` = c("Premier League", "La Liga", "Bundesliga", "Serie A", "Ligue 1"),
  `Revenue` = c(3518, 2049, 1460, 1123, 687)
)
tv$percent <- tv$Revenue / sum(tv$Revenue) * 100
library(plotly)

data <- data.frame("Categorie" = tv$Comp, "X1960" = tv$percent)

colors <- c('rgb(211,94,96)', 'rgb(128,133,133)', 'rgb(144,103,167)', 'rgb(171,104,87)', 'rgb(114,147,203)')

fig <- plot_ly(data, labels = ~Categorie, values = ~X1960, type = 'pie',
               textposition = 'inside',
               textinfo = 'label+percent',
               insidetextfont = list(color = '#FFFFFF'),
               hoverinfo = 'text',
               text = ~paste('$', round(X1960, 2), ' %'),  # Display percentages
               marker = list(colors = colors,
                             line = list(color = '#FFFFFF', width = 1)),
               showlegend = FALSE)

fig <- fig %>% layout(title = 'Tv revenue by league 2021/2022',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig
