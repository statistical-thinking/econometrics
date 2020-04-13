#############
# Kovarianz #
#############

# Kovarianz zwischen Agriculture und Education
cov(swiss$Agriculture, swiss$Education)
var(swiss$Agriculture, swiss$Education)

# Äquivalenzprinzip bei einer Variablen
cov(swiss$Agriculture, swiss$Agriculture)
var(swiss$Agriculture)
