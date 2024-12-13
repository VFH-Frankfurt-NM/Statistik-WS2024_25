#  Einlesen der Wasserstände
groesse <- c(165,165,168,172,173,174,174,176,176,181,191,191,195)

#  1)
table(groesse)

#  2)
quantile(groesse,c(0.25,0.5,0.75))

#  3)
boxplot(groesse,
        xlab = "Körpergröße in cm",
        col = "aliceblue",
        horizontal = TRUE)
