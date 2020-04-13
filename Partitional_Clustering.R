##########################
# Partitional Clustering #
##########################

# Partitional Clustering Vorbereitungen
clusters <- scale(iris[c(1:4)])

# Vergleich der Within Groups Sum of Squares
wss <- (nrow(clusters)-1)*sum(apply(clusters,2,var))
for (i in 2:10) wss[i] <- sum(kmeans(clusters, centers=i)$withinss)

# Grafische Darstellung der Anzahl an Clustern
plot(1:10, wss, type="c", xlab="Cluster", ylab="WSS")

# Reproduzierbarkeit sicherstellen
set.seed(1701)

# K-Means Algorithmus anwenden
k_means_cluster <- kmeans(iris[,-5], 3, nstart=30)

# Zusatzprogramm CLUSTER installieren und aktivieren
install.packages("cluster", dependencies=TRUE)
library(cluster)

# Grafische Darstellung der K-Means Lösung
clusplot(iris, k_means_cluster$cluster, color=TRUE, shade=TRUE, lines=0)

# Präzision der K-Means Lösung
table(iris$Species, k_means_cluster$cluster)
