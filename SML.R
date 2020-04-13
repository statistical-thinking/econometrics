###############################
# Supervised Machine Learning #
###############################

# Zusatzprogramm CARET installieren und aktivieren
install.packages("caret", dependencies=TRUE)
library(caret)

# Features anlegen
x <- iris[,1:4]
y <- iris[,5]

# Grafische Darsrellung der Features
featurePlot(x=x, y=y, plot="box")

# Manuelle Klassifikation von Schwertlilienarten
classification <- subset(iris, Petal.Length <= "2" & Petal.Width <= "1", select=c(Species))
summary(classification)

# Grafische Darstellung über SEPAL.WIDTH und SEPAL.LENGTH
shapes=c(1,0,20)
shapes <- shapes[as.numeric(iris$Species)]
plot(x=iris$Sepal.Length, y=iris$Sepal.Width, frame=FALSE, xlab="Sepal Length", ylab="Sepal Width", pch=shapes)
legend("topright", legend=levels(iris$Species), pch=c(1,0,20))

# Training Data und Validation Data anlegen
validation_index <- createDataPartition(iris$Species, p=0.80, list=FALSE)
validation <- iris[-validation_index,]
model <- iris[validation_index,]

# Training Data und Validation Data einsehen
summary(validation)
summary(model)

# Validierung festlegen
control <- trainControl(method="cv", number=10)
metric <- "Accuracy"

# Linear Discriminant Analysis trainieren
fit.lda <- train(Species~., data=model, method="lda", metric=metric, trControl=control)

# K-Nearest Neighbors trainieren
fit.knn <- train(Species~., data=model, method="knn", metric=metric, trControl=control)

# Random Forest trainieren
fit.rf <- train(Species~., data=model, method="rf", metric=metric, trControl=control)

# Vergleich der Machine Learning Algorithmen
results <- resamples(list(lda=fit.lda, knn=fit.knn, rf=fit.rf))
summary(results)

# Grafische Darstellung des Vergleichs der Machine Learning Algorithmen
dotplot(results)

# Fokus auf besten Algorithmus
print(fit.lda)

# Machine Learning Algorithmus auf Validation Data anwenden
predictions <- predict(fit.lda, validation)
confusionMatrix(predictions, validation$Species)

# Machine Learning Algorithmus auf gesamten Datensatz anwenden
predictions <- predict(fit.lda, iris)
confusionMatrix(predictions, iris$Species)