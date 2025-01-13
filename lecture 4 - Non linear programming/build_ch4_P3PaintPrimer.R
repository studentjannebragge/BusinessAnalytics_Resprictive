# Lataa tarvittavat kirjastot
library(readxl)
library(nloptr)

# Lataa data Excelistä
file_path <- "build_ch4_P3PaintPrimer.xlsx"  # Korvaa polku omalla tiedostosi sijainnilla
operational_data <- read_excel(file_path, sheet = "Operational Data")

# Esikäsittele data (valitse tarvittavat sarakkeet)
data <- data.frame(
  Primer_Product = operational_data$`Primer Product Number`,
  Processing_Time = operational_data$`Processing Time (in hours) per Gallon`,
  Raw_Materials_Cost = operational_data$`Raw Materials Cost`,
  Max_Production = 1000,  # Oletusarvo maksimituotannolle
  Min_Production = 500    # Oletusarvo minimituotannolle
)

# Rajoitteet
available_machine_hours <- 10000  # Käytettävissä olevat konetunnit
budget <- 100000  # Raaka-ainebudjetti

# Optimointifunktio: Maksimoi voitto (NP)
objective_function <- function(x) {
  -((sum(x^3) - 3 * sum(x^2) + 2 * sum(x)) / 10000) # Miinus, koska nloptr minimoi oletuksena
}

# Gradientti tavoitefunktiolle
objective_gradient <- function(x) {
  grad <- (3 * x^2 - 6 * x + 2) / 10000
  -grad  # Miinus, koska tavoitteena on maksimointi
}

# Rajoite: Konetunnit ja raaka-ainekustannukset
constraint_function <- function(x) {
  c(
    sum(x * data$Processing_Time) - available_machine_hours, # Koneaikarajoite
    sum(x * data$Raw_Materials_Cost) - budget                # Budjettirajoite
  )
}

# Gradientti rajoitefunktioille
constraint_gradient <- function(x) {
  # Jokaisen muuttujan gradientti rajoitteiden suhteen
  grad_machine_hours <- data$Processing_Time
  grad_budget <- data$Raw_Materials_Cost
  rbind(grad_machine_hours, grad_budget)  # Palautetaan gradientit matriisina
}

# Alkutilanne: Päätösmuuttujat
x0 <- rep(500, nrow(data))  # Alustava arvaus

# Optimointi gradientilla
result <- nloptr(
  x0 = x0,
  eval_f = objective_function,
  eval_grad_f = objective_gradient,  # Gradientti tavoitefunktiolle
  eval_g_ineq = constraint_function,
  eval_jac_g_ineq = constraint_gradient,  # Gradientti rajoitefunktioille
  lb = data$Min_Production,
  ub = data$Max_Production,
  opts = list(
    algorithm = "NLOPT_LD_MMA",
    xtol_rel = 1.0e-6,
    maxeval = 1000
  )
)

# Tulokset
cat("Optimaaliset tuotantomäärät:", result$solution, "\n")
cat("Optimoitu nettovoitto:", -result$objective, "\n")  # Miinus käännetään takaisin maksimoimiseksi

