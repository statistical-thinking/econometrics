###########
# Boxplot #
###########

# Boxplot der Variable Girth
boxplot(trees$Girth, main="Boxplot: Girth")

# Boxplot aller Variablen des Datensatzes
par(mfrow=c(1,3))
boxplot(trees$Girth, main="Boxplot: Girth")
boxplot(trees$Height, main="Boxplot: Height")
boxplot(trees$Volume, main="Boxplot: Volume")

# Boxplot aller Variablen in Kurzform anzeigen 
boxplot(trees)
