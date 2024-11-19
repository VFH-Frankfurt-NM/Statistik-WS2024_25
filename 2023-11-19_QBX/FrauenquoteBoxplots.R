#Quelle https://www.bmfsfj.de/quote/daten.html
#Stand: 19.11.2024

AR <- read.csv(file="Aufsichtsraete.csv", sep=";") # Einlesen der Daten

## Pruefung der Anzahlen
AR$Anteil.Frauen.Aufsichtsrat <- AR$Davon.Frauen/AR$Mitgliederzahl.Aufsichtsrat
table(AR$fixe.Quote, is.na(AR$Anteil.Frauen.Aufsichtsrat))
AR$fixe.Quote.display <- AR$fixe.Quote
AR$fixe.Quote.display[AR$fixe.Quote=="ja"] <- "Ja (n=81)"
AR$fixe.Quote.display[AR$fixe.Quote=="nein"] <- "Nein (n=946)"
boxplot(Davon.Frauen/Mitgliederzahl.Aufsichtsrat ~ fixe.Quote.display, data=AR,
        ylab="Frauenanteil im Aufsichtsrat",
        ylim=c(0,0.7),
        xlab="Feste Quote",
        varwidth=TRUE, las=1)
Encoding()
