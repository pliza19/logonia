library(checkmate)

logistic_regression <- function(intercept, values, coefficients) {
  assert_number(intercept)
  assert_numeric(values, len = 3)
  assert_numeric(coefficients, len = 3)

  linear_combination <- intercept + sum(values * coefficients)

  1 / (1 + exp(- linear_combination))
}

prob <- numeric()
range <- seq(-235, -210, by = 1)
values <- c(20, 33, 200)
coefficients <- c(0.35, 0.45, 1)

for (i in range) {
  i_prob <- logistic_regression(
    intercept = i,
    values = values,
    coefficients = coefficients
  )

  prob <- c(prob, i_prob)
}

plot(range, prob, type = "l")
