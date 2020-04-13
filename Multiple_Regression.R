#######################
# Multiple Regression #
#######################

# Manuelle Auswahl unabhängiger Variablen
manual_regression <- lm(data=mtcars, mpg~wt+cyl+disp+hp)
summary(manual_regression)

# Manuelle Auswahl unabhängiger Variablen (Variante-I)
manual_regression <- lm(data=mtcars, mpg~wt+cyl+disp)
summary(manual_regression)

# Manuelle Auswahl unabhängiger Variablen (Variante-II)
manual_regression <- lm(data=mtcars, mpg~wt+cyl)
summary(manual_regression)

# Stepwise backward Auswahl unabhängiger Variablen
backward_regression <- step(lm(data=mtcars, mpg~wt+cyl+disp+hp), direction="backward")
summary(backward_regression)

# Stepwise forward Auswahl unabhängiger Variablen
forward_regression <- step(lm(data=mtcars, mpg~wt+cyl+disp+hp), direction="forward")
summary(forward_regression)

# Stepwise both Auswahl unabhängiger Variablen
both_regression <- step(lm(data=mtcars, mpg~wt+cyl+disp+hp), direction="both")
summary(both_regression)