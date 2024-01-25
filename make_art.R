# Assignment 3.2.2 Solution - 2024 Programming in Psychological Science (PIPS)
#
# Record of Revisions
#
# Date            Programmer          Descriptions of Change
# ====         ================       ======================
# 26-Jan-24    Kianush Monschau           Original code

# Q3.2.2 ----------------------------------------------------------------------

# "The Fly": Using the make_art function defined below, one can generate a blue
# (the sky), with a black dot (the fly) flying around the space.

library(ggplot2)
library(gganimate)

make_art <- function(chosen_seed = 123) { # seed to set randomness is input
  set.seed(chosen_seed)
  # movements of fly are based on random draw from uniform distribution
  art <- data.frame(a = sample(runif(100, 0, 100)), 
                    b = sample(runif(100, 0, 100)))
  
  ggplot(art, aes(x = a, y = b)) +
    geom_point(position = position_jitter(width = 5, height = 5), size = 3) +
    theme_void() +
    # theme updates get rid of every element except background, which it colors
    theme(
      axis.text = element_blank(),
      axis.title = element_blank(),
      axis.ticks = element_blank(),
      panel.grid = element_blank(),
      panel.border = element_blank(),
      plot.background = element_rect(fill = "skyblue", color = "skyblue")
    ) +
    transition_time(b) + 
    ease_aes("linear") +
    enter_fade() +
    exit_fade()
}

make_art() # example use of the function with the seed being set at 5344
