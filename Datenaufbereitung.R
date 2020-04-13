#####################
# Datenaufbereitung #
#####################

# Training Data anlegen
subset1 <- subset(trees[1:5,])
subset2 <- subset(trees[26:30,])
training_data <- rbind(subset1, subset2)

# Training Data einsehen
training_data