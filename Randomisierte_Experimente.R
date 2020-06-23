#############################
# Randomisierte Experimente #
#############################

# Reproduzierbarkeit sicherstellen
set.seed(1701)

# Punkte-Variable simulieren
punkte_a <- as.matrix(round(rnorm(50,12,0.5)))
punkte_b <- as.matrix(round(rnorm(50,10,0.5)))
punkte <- rbind(punkte_a, punkte_b)

# Dummy-Variable simulieren
dummy_a <- as.matrix(rnorm(50,1,0))
dummy_b <- as.matrix(rnorm(50,0,0))
dummy <- rbind(dummy_a, dummy_b)

# Variablen zusammenführen
daten <- cbind(punkte,dummy)
summary(daten)

# Regresdsionsmodell aufsetzen
lm(daten[,1]~daten[,2])

###############
# Zusatzübung #
###############

# Zusatzprogramm FOREIGN installieren und aktivieren
install.packages("foreign", dependencies=TRUE)
library(foreign)

# Datensatz von Server laden
jobtrain <- read.dta("http://www.statistical-thinking.de/r-daten/jobtrain.dta")

# Anzahl der Fälle im Datensatz bestimmen
str(jobtrain)

# Relevante Variablen mittels deskriptiver Analyse fokussieren
summary(jobtrain[1:3])
summary(jobtrain[11])

# Einfaches Regressionsmodell
lm(re78 ~ train, data = jobtrain)

# Erweitertes Regressionsmodell
regression <- lm(re78 ~ train, data = jobtrain)
summary(regression)

# Vergleichbarkeit von Programm- und Kontrollgruppe
mean(age ~ train, data = jobtrain)
t.test(age ~ train, data = jobtrain)
mean(educ ~ train, data = jobtrain)
t.test(educ ~ train, data = jobtrain)
