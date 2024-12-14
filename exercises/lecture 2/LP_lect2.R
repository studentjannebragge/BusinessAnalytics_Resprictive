
# Install lpSolve if not already installed
if (!require(lpSolve)) {
  install.packages("lpSolve")
}

# Load the lpSolve library
library(lpSolve)

# Objective function: Maximize profit
objective <- c(40, 50)  # Coefficients of profit for A and B

# Constraints
constraints <- matrix(c(1, 2,  # Labor constraint coefficients
                        3, 2), # Material constraint coefficients
                      nrow = 2, byrow = TRUE)

# Right-hand side of constraints
rhs <- c(8, 12)  # Available labor and material

# Direction of constraints (<=)
direction <- c("<=", "<=")

# Solve the linear programming problem
solution <- lp("max", objective, constraints, direction, rhs)

# Display the results
if (solution$status == 0) {
  cat("Optimal solution found:\n")
  cat("Number of units of Product A:", solution$solution[1], "\n")
  cat("Number of units of Product B:", solution$solution[2], "\n")
  cat("Maximum Profit:", solution$objval, "\n")
} else {
  cat("No feasible solution found.\n")
}
