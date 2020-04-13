###########################
# Hierarchical Clustering #
###########################

# Reproduzierbarkeit sicherstellen
set.seed(1701)

# Hierarchical Clustering Vorbereitungen
hierarchical_cluster <- hclust(dist(iris[,-5]))

# Zusatzprogramm SPARCL installieren und aktivieren
install.packages("sparcl", dependencies=TRUE)
library(sparcl)

# Dendrogram des Hierarchical Clusterings aufrufen
y=cutree(hierarchical_cluster, 3)
ColorDendrogram(hierarchical_cluster, y=y, branchlength=30)

# Präzision des Hierarchical Clusterings
table(y, iris$Species)