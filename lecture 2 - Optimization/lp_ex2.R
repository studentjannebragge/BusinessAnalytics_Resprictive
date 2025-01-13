# Install lpSolve if not installed
if (!require(lpSolve)) {
  install.packages("lpSolve")
}

# Load the lpSolve library
library(lpSolve)

# Objective function (minimize cost)
objective <- c(1200, 400)  # Cost per TV and radio advertisement

# Constraints matrix
constraints <- matrix(c(25000, 12500,  # Voter reach
                        1,      0,      # Minimum TV spots
                        0,      1),     # Maximum radio spots
                      nrow = 3, byrow = TRUE)

# Right-hand side (RHS) of constraints
rhs <- c(1000000,  # Voter reach
         30,       # Minimum TV spots
         60)       # Maximum radio spots

# Direction of constraints
direction <- c(">=", ">=", "<=")

# Solve the linear programming problem
solution <- lp("min", objective, constraints, direction, rhs)

# Display results
if (solution$status == 0) {
  cat("Optimal solution found:\n")
  cat("Number of TV spots (x1):", solution$solution[1], "\n")
  cat("Number of radio spots (x2):", solution$solution[2], "\n")
  cat("Minimum cost:", solution$objval, "\n")
} else {
  cat("No feasible solution found.\n")
}


