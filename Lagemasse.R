############
# Lagemaße #
############

# Arithmetisches Mittel der Variable Volume
mean(trees$Volume)

# Modus der Variable Volume
modus <- function(variable) {
	uniqv <- unique(variable)
	uniqv[which.max(tabulate(match(variable, uniqv)))]
}

result <- modus(trees$Volume)
print(result)

# Median der Variable Volume
median(trees$Volume)