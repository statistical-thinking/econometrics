###########
# Varianz #
###########

# Grundlegende Befehle am Beispiel der Variable Girth
table(trees$Girth)
hist(trees$Girth)

# Varianz der Variable Girth
var(trees$Girth)

# Standardabweichung der Variable Girth
sd(trees$Girth)

# Standardabweichung als Wurzel der Varianz
sqrt(var(trees$Girth))