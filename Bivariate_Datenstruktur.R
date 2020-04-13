###########################
# Bivariate Datenstruktur #
###########################

# Zusatzprogramm CORRPLOT installieren und aktivieren
install.packages("corrplot", dependencies=TRUE)
library(corrplot)

# Korrelationsmatrix als Objekt anlegen
cor_matrix <- cor(swiss)

# Korelationsmatrix mit CORRPLOT visualisieren
corrplot(cor_matrix, type="upper")

# Korrelationsmatrix mit Korrelationskoeffizienten
corrplot.mixed(cor_matrix)

# Zusatzinformationen zu CORRPLOT
help(corrplot)