################################
# Instrumentvariablenschätzung #
################################

# Zusatzprogramm FOREIGN installieren und aktivieren
install.packages("foreign", depenedencies=TRUE)
library(foreign)

# Zusatzprogramm AER installieren und aktivieren
install.packages("AER", depenedencies=TRUE)
library(AER)

# Zusatzprogramm STARGAZER installieren und aktivieren
install.packages("stargazer", depenedencies=TRUE)
library(stargazer)

# Datensatz von Server laden
mroz <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/mroz.dta")
head(mroz)

# Subset anlegen
oursample <- subset(mroz, !is.na(wage))

# Einfaches Regressionsmodell
lm(data = oursample, educ ~ fatheduc)

# Modelle aufsetzen
stage1 <- lm(educ ~ exper + I(exper^2) + motheduc + fatheduc, data = oursample)
man.2SLS <- lm(log(wage) ~ fitted(stage1) + exper + I(exper^2), data = oursample)
aut.2SLS <- ivreg(log(wage) ~ educ + exper + I(exper^1) | motheduc + fatheduc + exper + I(exper^2), data = oursample)

# Modelle vergleichen
stargazer(stage1, man.2SLS, aut.2SLS, type="text", keep.stat=c("n", "rsq"))