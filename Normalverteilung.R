####################
# Normalverteilung #
####################

# Reproduzierbarkeit sicherstellen
set.seed(1701)

# Variable simulieren
sim_variable <- rnorm(n=1000, mean=5.5, sd=0.5)

# Dichtefunktion der simulierten Variable
plot(density(sim_variable))