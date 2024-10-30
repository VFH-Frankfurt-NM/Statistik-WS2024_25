# Erste Schritte in R
# Ein R-Skript.
# KickOff-Meeting vom 29.10.2024
# -------------------------------------------------------------------------
# Zeilen die mit einem "#" beginnen sind Kommentarzeilen und werden bei der
# Ausführung nicht berücksichtigt.

# R als Taschenrechner
1 + 2 - 3 / 4 * 5

# Die ersten 200 Zahlen ausgeben lassen, beginnend mit der zwei.
2:202

# Zwei Variablen zuweisen:
x <- 2023 # Name der Varibale ist x und der Wert 2023 wir ihr zugewiesen!
y <- 2024

# Eine Variable mit dem Namen "vec", der ein Vektor zugewiesen wird.
# Der Befehl "c(...)" steht für 'combine' und kombiniert quasi die
# einzelnen Werte zu einem Vector.
vec <- c(x, y, "Test")

# Den Vektor ausgeben:
vec

# 1, ..., 3 normale Sprache in R geht mit 1:3
# Die Zahlen von 1 bis 10 (=1,2,3,...,10) erhalten wir mit:
1:10

# Wir laden das Paket "mosaic" nach!
# ggf. vorher ausführen:
# > install.packages("mosaic")
# Mit diesem Befehl haben Sie dann ihr "Buch"(also das Paket) aus
# dem "Buchladen"(also dem CRAN --"Comprehensive R Archive Network"),
# in ihre" "Handbibliothek" (also Speicher auf dem Rechner bzw. der posit.cloud)
# geladen und können es danach aus dieser auf den "Schreibtisch" (also der
# aktuellen Rechnerumgebung) laden mit Hilfe von:
library(mosaic)

# Hier erscheinen ggf. viele rote Zeilen. Das sind in der Regel keine
# Fehlermeldungen, sondern Informationen. Zzm Beispiel darüber welche Befehl
# aus welchen Paketen jetzt durch dieses Paket ersetzt bzw überschrieben wurden.

# In dem Paket "mosaic" gibt es versteckte Datentabellen. Diese können wir
# wie folgt in die Rechnerzngebung laden:
data(iris)

# Zeigt die Daten der Tabelle in einem eigenen Fenster an:
View(iris)

# Ruft (eventuelle vorhandene) Hilfeseiten zur Datentabelle "iris" auf:
?iris

# Jetzt etwas Arbeit. Wir wollen uns die Kelchblattlänge (in cm) etwas
# genauer ansehen. Dazu wollen wir die Kennzahl *Mittelwert* dieser Variabel
# betrachten.
# Es gibt zwei Möglichkeiten den Mittelwert des Merkmals "Sepal.Length"
# anzeigen zu lassen:
mean( ~ Sepal.Length, data = iris)
mean(Sepal.Length ~ 1, data = iris)

# Wenn wir die Mittelwerte für jede der drei Arten(=Species) einzeln betrachten
# wollen, so können wir die Mittelwerte von "Sepal.Length" für jede "Species"
# einzeln ausgeben lassen mit:
mean(Sepal.Length ~ Species, data = iris)

# Die "favorated statistics" von "Sepal.Length":
favstats( ~ Sepal.Length, data = iris)

# Die "favorated statistics" von "Sepal.Length" für jede "Species" einzeln:
favstats( Sepal.Length ~ Species, data = iris)

# Wenn wir sehen wollen ob die Blütenblattlänge(="Sepal.Length") etwas mit
# der Kelchblattbreite(="Petal.Width") zu tun hat und schauen uns dafür das
# Streudiagramm "Sepal.Width" auf "Petal.Width" an.
gf_point(Sepal.Length ~ Petal.Width, data = iris)

# Um die Arten ("Species") zu erkennen können wir die Punkte einfärben:
gf_point(Sepal.Length ~ Petal.Width, color = ~ Species, data = iris)

# Eine etwas erweiterte Ausgabe, damit Sie einmal sehen, was noch machbar ist.
gf_point(Sepal.Length ~ Petal.Width, color = ~ Species, data = iris) %>%
    gf_labs( # Wir wollen ein paar Dinge hinzufühgen zur Ausgabe
        title = "Schwertlilien (engl. Iris) im Vergleich",
        subtitle = "Verschiedenfarbige (Iris versicolor), Borsten- (Iris setosa) \nund Verginische Schwertlinien (Iris verginica)",
        x = "Kelchblattbreite (in cm)",
        y = "Blütenblattlänge (in cm)"
    )
