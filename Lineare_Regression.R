######################
# Lineare Regression #
######################

# Regressionsgleichung für WT (UV) und MPG (AV)
lm(data=mtcars, mpg~wt)

# Details zur Regressionsgleichung aufrufen
regression <- lm(data=mtcars, mpg~wt)
summary(regression)

# Lineare Regression grafisch darstellen
plot(mtcars$wt, mtcars$mpg, xlim=c(1,6))
abline(lm(mtcars$mpg~mtcars$wt))