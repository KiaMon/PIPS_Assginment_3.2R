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
  if (question_number == 3) {
    cat(
      "Q3.1.1: I added appropriate spaces to the solution. I also made the
      variable names self-explanatory and added underscores to indicate spacing.
      I changed the comments to say why the code exists, not what it does.
      Finally, I edited the code to fit the 80 character limit.

      Q3.1.3:I added correct spacing to make the code more readable. I also added
      line breaks to keep within the 80 character limit. Further, I changed the
      object name that the plot is assigned to to be self-explanatory. Lastly I
      improved the indentation."
    )
  }
}

cheat(3)

# The second function cheat() takes one argument specifying which exercise from
# assignment 3.1. the user of your package wants to cheat on. Given the exercise
# number, your cheat() function tells the user the correct solution.
# The cheat function should work for at least 3 exercises.