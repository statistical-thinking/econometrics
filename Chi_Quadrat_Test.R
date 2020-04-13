####################
# Chi-Quadrat-Test #
####################

# Zusatzprogramm CAR installieren und aktivieren
install.packages("car", dependencies=TRUE)
library(car)

# Variable Agriculture in binäre Variable überführen
Binary_Agriculture <- car::recode(swiss$Agriculture, "0:50 = '0'; 50.01:100 ='1'")

# Variable Education in binäre Variable überführen
Binary_Education <- car::recode(swiss$Education, "0:10 = '0'; 11:100 ='1'")

# Vierfeldermatrix der binären Variablen
table(Binary_Agriculture, Binary_Education)

# Chi-Quardat-Test der binären Variablen
chisq.test(Binary_Agriculture, Binary_Education)