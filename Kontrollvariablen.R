#####################
# Kontrollvariablen #
#####################

# Datensatz von Server laden
RCT <- read.csv("http://www.statistical-thinking.de/r-daten/RCT.csv", head=T, sep=";", dec=".", fileEncoding="UTF-8-BOM")
head(RCT)

# Vergleichbarkeit von Programm- und Kontrollgruppe
t.test(Age ~ Dummy, data = RCT)
t.test(Experience ~ Dummy, data = RCT)

# Erweitertes Regressionsmodell (Einfachregression)
RCT_Einfachregression <- lm(Punkte ~ Dummy, data = RCT)
summary(RCT_Einfachregression)

# Erweitertes Regressionsmodell (Multiple Regression)
RCT_Multiple_Regression <- lm(Punkte ~ Dummy + Age + Experience, data = RCT)
summary(RCT_Multiple_Regression)
