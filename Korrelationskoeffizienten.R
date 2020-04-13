#############################
# Korrelationskoeffizienten #
#############################

# Grafische Darstellung des Scatterplots von Agriculture und Education
plot(swiss$Education, swiss$Agriculture)

# Korrelationskoeffizient von Agriculture und Education
cor(swiss$Education, swiss$Agriculture)

# Zusatzprogramm STATS installieren und aktivieren
install.packages("stats", dependencies=TRUE)
library(stats)

# Zusatzprogramm GRAPHICS installieren und aktivieren
install.packages("graphics", dependencies=TRUE)
library(graphics)

# Graphische Darstellung aller bivariaten Zusammenhänge eines Datensatzes
pairs(swiss, panel=panel.smooth, main="Scatterplot aller Variablen", lower.panel=NULL)

# Korrelationskoeffizienten aller Variablen
cor(swiss)