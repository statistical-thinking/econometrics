############################
# Training und Validierung #
############################

# Lineares Regressionsmodell als Machine Learning Algorithmus
lm(data=training_data, Volume~Girth+Height)

# Validation Data anlegen
subset3 <- subset(trees[6:25,])
subset4 <- subset(trees[31,])
validation_data <- rbind(subset3, subset4)

# Validation Data einsehen
validation_data

# Machine Learning Algorithmus auf Validation Data anwenden
algorithm <- lm(data=training_data, Volume~Girth+Height)
validation <- predict(algorithm, validation_data)
difference <- validation_data-validation
mean(difference$Volume)