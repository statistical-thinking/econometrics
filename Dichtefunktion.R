##################
# Dichtefunktion #
##################

# Dichtefunktion der Variable Girth
plot(density(trees$Girth), main="Dichtefunktion: Girth")
abline(0, 0, 0, 11.05)
abline(0, 0, 0, 15.25)

# Dichtefunktionen aller Variablen des Datensatzes
par(mfrow=c(1,3))
plot(density(trees$Girth), main="Dichtefunktion: Girth")
plot(density(trees$Height), main="Dichtefunktion: Height")
plot(density(trees$Volume), main="Dichtefunktion: Volume")

# Bandwidth der Dichtefunktion der Variable Girth
par(mfrow=c(1,3))
plot(density(trees$Girth), main="Dichtefunktion: Girth")
plot(density(trees$Girth, adjust=0.5), main="Dichtefunktion: Girth")
plot(density(trees$Girth, adjust=0.25), main="Dichtefunktion: Girth")