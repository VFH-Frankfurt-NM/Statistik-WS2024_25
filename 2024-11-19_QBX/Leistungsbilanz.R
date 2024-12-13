# Einlesen der Daten
Leistungsbilanz = read.csv2(file = "Leistungsbilanz.csv",
                            sep = ";",
                            stringsAsFactors = FALSE) 
Leistungsbilanz = as.data.frame(Leistungsbilanz)

# Boxplot mit Ausreiﬂer
boxplot(Leistungsbilanz[c(4:33),]$X2021.09) 

# Boxplot ohne Ausreiﬂer
boxplot(Leistungsbilanz[c(4:33),]$X2021.09 , outline = FALSE, col = "aliceblue")

# Wird der Parameter plot = FALSE
# gesetzt, wird der Plot unterdr¸ckt und stattdessen die Werte 
# der Quartile und Ausreiﬂer ausgegeben
boxplot(Leistungsbilanz[c(4:33), ]$X2021.09 , plot = FALSE) 