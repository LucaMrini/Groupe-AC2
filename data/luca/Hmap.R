# Reading population data from a CSV file (replace 'population_data.csv' with your file name)
population_data <- read.csv("data/luca/demo_clean.csv", stringsAsFactors = FALSE)
population_data <- population_data[, c("Country.Name", "Country.Code", paste0("pop", 1990:2022))]
population_data <- population_data[!duplicated(population_data$Country.Name), c("Country.Name", "Country.Code", paste0("pop", 1990:2022))]
columns_to_convert_pop <- paste0("pop", 1990:2022)

for (col in columns_to_convert_pop) {
  population_data[[col]] <- as.numeric(gsub("'", "", as.character(population_data[[col]])))
}

for (col in columns_to_convert_pop) {
  population_data[[col]] <- as.numeric(as.character(population_data[[col]]))
}

# Convert the data to long format suitable for plotting
population_data_long <- population_data %>%
  tidyr::gather(key = "Year", value = "Population", -Country.Name, -Country.Code) %>%
  mutate(Year = gsub("pop", "", Year),  # Extract the year from column names
         Year = as.numeric(Year))  

# Get world map data
world_map <- map_data("world")


plot_ly() %>%
  add_trace(
    data = world_map %>% filter(region != "USA"),  # Filter out USA from the map data
    type = "scattergeo",
    locations = ~region,
    z = ~NA,
    text = ~region,
    mode = "text",
    hoverinfo = "text",
    showlegend = FALSE
  ) %>%
  add_trace(
    data = world_map %>% filter(region != "USA"),  # Filter out USA from the map data
    type = "scattergeo",
    locations = ~c(long, lat),
    mode = "lines",
    line = list(color = "black", width = 0.5),
    showlegend = FALSE
  ) %>%
  add_trace(
    data = population_data_long,
    type = "choropleth",
    locations = ~Country.Code,
    z = ~Population,
    colorscale = "Viridis",
    text = ~paste("Country: ", Country.Name, "<br>Population: ", Population),
    colorbar = list(title = "Population"),
    showlegend = FALSE
  ) %>%
  layout(
    title = "World Population Heatmap",
    geo = list(
      showframe = FALSE,
      showcoastlines = TRUE,
      projection = list(type = "mercator")
    ),
    sliders = list(
      list(
        active = 10,
        steps = lapply(unique(population_data_long$Year), function(year) {
          list(
            method = "restyle",
            args = list("z", list(population_data_long$Population[population_data_long$Year == year])),
            label = year
          )
        })
      )
    )
  )
