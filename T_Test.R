##########
# t-Test #
##########

# t-Test für Agriculture und Binary_Education
t.test(swiss$Agriculture~Binary_Education)

# Subset für Fälle mit niedrigerem Bildungsniveau
niedrigeres_Bildungsniveau <- subset(swiss, Binary_Education=="0")

# Subset für Fälle mit höherem Bildungsniveau
höheres_Bildungsniveau <- subset(swiss, Binary_Education=="1")

# Boxplots der Subsets für Agriculture und Binary_Education
par(mfrow=c(1:2))
boxplot(niedrigeres_Bildungsniveau$Agriculture, main="niedrigeres Bildungsniveau", ylim=c(0, 90))
boxplot(höheres_Bildungsniveau$Agriculture, main="höheres Bildungsniveau", ylim=c(0, 90))

# Boxplots der Subsets für Infant.Mortality und Binary_Education
par(mfrow=c(1:2))
boxplot(niedrigeres_Bildungsniveau$Infant.Mortality, main="niedrigeres Bildungsniveau", ylim=c(10, 30))
boxplot(höheres_Bildungsniveau$Infant.Mortality, main="höheres Bildungsniveau", ylim=c(10, 30))

# t-Test für Infant.Mortality und Binary_Education
t.test(swiss$Infant.Mortality~Binary_Education)
