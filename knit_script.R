# knit_script.R


library(dplyr)             # For manipulating data
library(ggplot2)           # For graphing functions
library(magrittr)          # For pipe operator, (%>%)
library(MKHthemes)         # For default ggplot2 theme
library(readxl)            # To read Excel files
library(rgeos)             # For map stuff
library(rnaturalearth)     # For maps
library(rnaturalearthdata) # For maps
library(networkD3)         # For Sankey diagram
library(sf)                # Shape files for maps
library(tidyr)             # For manipulating data
library(viridis)           # For a great color palette for graphs
library(xtable)            # For awesome tables

# Set default sizes for figures throughout the book.
# We can always override with options on each individual chunk.
knitr::opts_chunk$set(echo = FALSE, 
                      fig.width = 6,    # inches
                      fig.height = 3.5, # inches
                      fig.align = "center", 
                      fig.pos = "t", 
                      eval.after = "fig.cap", 
                      verbose = TRUE)



mc_title_blue <- "#0d5e92"
data_line_size <- 1
bar_colour <- mc_title_blue
data_line_colour <- mc_title_blue
data_linetype <- "solid"
curve_fit_size <- 0.5
curve_fit_colour <- "#B44B09" # Complement to mc_title_blue
curve_fit_linetype <- "solid"
guide_line_size <- 0.2
guide_line_colour <- "gray50"
guide_linetype <- "solid"







knitr::knit(input = "book.Rnw")
knitr::knit(input = "ch01-Introduction.Rnw")
knitr::knit(input = "ch02-Boundaries.Rnw")
knitr::knit(input = "ch03-Population.Rnw")
knitr::knit(input = "ch04-Affluence.Rnw")
knitr::knit(input = "ch05-ResourceIntensity.Rnw")
knitr::knit(input = "ch06-ImpactIntensity.Rnw")
knitr::knit(input = "ch07-Households.Rnw")
knitr::knit(input = "ch08-Transportation.Rnw")
knitr::knit(input = "ch09-Agriculture.Rnw")
knitr::knit(input = "ch10-LandUseUrbanPlanning.Rnw")
knitr::knit(input = "ch11-Government.Rnw")
knitr::knit(input = "ch12-PersonalAction.Rnw")
