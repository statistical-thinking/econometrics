############################
# Logistischen Regressions #
############################

# Logistische Regression als neues Objekt anlegen
logistic_regression <- glm(formula = am ~ gear, family = binomial, data = mtcars)

# Logistische Regression grafisch darstellen
X <- seq(3,5, 0.01)
Y <- predict(logistic_regression, list(gear=X), type="response")
plot(mtcars$gear, mtcars$am, pch=16, xlab="Gänge eines Kraftfahrzeugs", ylab="automatisch (0) / manuell (1)")
lines(X, Y)

# Kennwerte der logistischen Regression
summary(logistic_regression)