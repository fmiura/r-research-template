#' Example utility function
#'
#' This is a placeholder function for reusable project code.
#'
#' @param x A numeric vector.
#' @return The mean of `x`, excluding missing values.
#' @export
mean_na <- function(x) {
  mean(x, na.rm = TRUE)
}
