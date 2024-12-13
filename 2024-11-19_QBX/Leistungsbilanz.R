# Einlesen der Daten
Leistungsbilanz = read.csv2(file = "Leistungsbilanz.csv",
                            sep = ";",
                            stringsAsFactors = FALSE) 
Leistungsbilanz = as.data.frame(Leistungsbilanz)

# Boxplot mit Ausreißer
boxplot(Leistungsbilanz[c(4:33),]$X2021.09) 

# Boxplot ohne Ausreißer
boxplot(Leistungsbilanz[c(4:33),]$X2021.09 , outline = FALSE, col = "aliceblue")

# Wird der Parameter plot = FALSE
# gesetzt, wird der Plot unterdrückt und stattdessen die Werte 
# der Quartile und Ausreißer ausgegeben
boxplot(Leistungsbilanz[c(4:33), ]$X2021.09 , plot = FALSE) 