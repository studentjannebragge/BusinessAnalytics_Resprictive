# Install lpSolve if not installed
if (!require(lpSolve)) {
  install.packages("lpSolve")
}

# Load the lpSolve library
library(lpSolve)

# Objective function (profit)
objective <- c(1300, 1000)  # Profit per lot of truck and car toys

# Constraints matrix
constraints <- matrix(c(6, 8,   # Plastic usage
                        10, 8,  # Labor hours
                        10, 4), # Machine time
                      nrow = 3, byrow = TRUE)

# Right-hand side (RHS) of constraints
rhs <- c(72,  # Plastic available
         80,  # Labor hours available
         60)  # Machine time available

# Direction of constraints
direction <- c("<=", "<=", "<=")

# Solve the linear programming problem
solution <- lp("max", objective, constraints, direction, rhs)

# Display results
if (solution$status == 0) {
  cat("Optimal solution found:\n")
  cat("Number of truck toy lots (x1):", solution$solution[1], "\n")
  cat("Number of car toy lots (x2):", solution$solution[2], "\n")
  cat("Maximum Profit:", solution$objval, "\n")
} else {
  cat("No feasible solution found.\n")
}


