#######################################
# Differenz-von-Differenzen Schätzung #
#######################################

# Zusatzprogramm FOREIGN laden und aktivieren
install.packages("foreign", dependencies=TRUE)
library(foreign)

# Zusatzprogramm LMTEST laden und aktivieren
install.packages("lmtest", dependencies=TRUE)
library(lmtest)

# Datensatz von Server laden
kielmc <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/kielmc.dta")

# Übersicht über DiD-Schätzer
coeftest(lm(rprice ~ nearinc * y81, data = kielmc))

# Erste Differenz
coeftest(lm(rprice ~ nearinc, data = kielmc, subset=(year==1981)))

# Zweite Differenz
coeftest(lm(rprice ~ nearinc, data = kielmc, subset=(year==1978)))
