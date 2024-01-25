

cheat <- function(question_number) {
  if (question_number == 17) {
    cat("The shortcut to format code nicely is ctrl+shift+A.")
  }
  if (question_number == 7) {
    cat(
      "cars_plot <- ggplot(cars,
                        mapping = aes(x = speed, y = dist)) +
      geom_smooth() + # adds smoothed conditional means
      geom_point() # adds scatter plot

    print(cars_plot)"
    )
  }
  if (question_number == 5) {
    cat(
      '# original plot
      plot(cars$speed, cars$dist)

      # improved plot
      plot(cars$speed, cars$dist,
          # 1. added title and axis labels
          main = "Plot of Car Distance vs Speed", xlab = "Speed", ylab = "Distance") 
      # 2. added grid to improve readability
      grid(nx = NULL, ny = NULL, lty = 1, col = "lightgray", lwd = 1)
      # 3. added regression line
      abline(lm(cars$dist ~ cars$speed, data = mtcars), col = "blue", lwd = 1.5)' 
    )
  }
}

cheat(5)