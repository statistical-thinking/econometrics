####################
# Mincer-Gleichung #
####################

# Zusatzprogramm AER installieren und aktivieren
install.packages("AER", depenedencies=TRUE)
library(AER)

# Zusatzprogramm FOREIGN installieren und aktivieren
install.packages("foreign", depenedencies=TRUE)
library(foreign)

# Zusatzprogramm STARGAZER installieren und aktivieren
install.packages("stargazer", depenedencies=TRUE)
library(stargazer)

# Datensatz von Server laden
mroz <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/mroz.dta")
head(mroz)

# Subset anlegen
oursample <- subset(mroz, !is.na(wage))

# Erste Schritt
with(oursample, cov(educ, log(wage)/var(educ)))

# Zweiter Schritt
with(oursample, cov(fatheduc, log(wage)/cov(fatheduc, educ)))

# OLS und IV Schätzmodelle
reg.ols <- lm(log(wage) ~ educ, data = oursample)
reg.iv <- ivreg(log(wage) ~ educ|fatheduc, data = oursample)

# OLS und IV Schätzmodelle vergleichen
stargazer(reg.ols, reg.iv, type="text")

# Upward Bias
with(oursample, cov(educ, fatheduc))