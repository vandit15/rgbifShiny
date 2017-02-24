#Hepler function for displaying the map using shiny app
library(rgbif)
occurence_map <- function(country,classKey){
  data <- occ_data(
    country = country,
    classKey = as.numeric(classKey),
    limit= 100)
  data <- data$data
  gbifmap(data,mapdatabase = "world")
}