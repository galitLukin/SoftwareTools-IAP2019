library(tidyverse)

read_all_csv <- function(directory){
  list.files(directory, full.names = T) %>% 
    map(read_csv) %>% 
    reduce(rbind)
}
prices   <- read_all_csv('data/prices')
listings <- read_all_csv('data/listings')
