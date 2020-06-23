###################
# Kausaler Effekt #
###################

# Datensatz von Server laden
RDD <- read.csv("http://www.statistical-thinking.de/r-daten/RDD.csv", head=T, sep=";", dec=".")
head(RDD)

# Grafische Darstellung der Diskontinuität
plot_RDD <- plot(Einkommen ~ Alter, data = RDD)

# Erweitertes Regressionsmodell
Ergebnis_RDD <- lm(Einkommen ~ Alter, data = RDD)
summary(Ergebnis_RDD)