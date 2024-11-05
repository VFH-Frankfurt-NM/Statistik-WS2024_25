#  Übung: Angeln

# Unter den Freunden des Angelsports stellt sich oft die Frage nach den 
# Besten ihrer Zunft. 12 Angler und Anglerinnen wollten es genau wissen. 
# Sie führten über fünf Jahre hinweg ein Fangbuch, in dem sie das Gewicht 
# der von ihnen gefangenen Fische (sie einigten sich auf eine Fischart, 
# den Dorsch) in Kilogramm verzeichneten. In der Datei angeln.txt sind 
# je Person (A01-A012)  die 20 schwersten gefangenen Dorsche zu finden. 
# Alle sind der Meinung, dass nicht der größte Fisch den besten Angler 
# bzw. die beste Anglerin ausmacht, sondern das regelmäßige Fangen 
# schwerer Fische. 

angeln<-read.table("angeln.txt",sep="\t",header=TRUE)


#  a) Veranschaulichen Sie sich die Fangergebnisse mit Hilfe des Boxplot!
#  b) Wer ist ihrer Meinung nach der beste Angler bzw. die beste Anglerin? Warum?
#  c) Erstellen Sie einen neuen Datensatz, der als Beobachtungen
#     den Median der schwersten gefangenen Fische pro Person enthält!
#     Stellen Sie ihn im Boxplot dar!
#  d) Was sagt dieser Boxplot aus?

##########

#  Angeln - Lösung

attach(angeln)

#  a)
boxplot(angeln,main="Boxplots",ylab="Gewicht",xlab="Person",col="grey")

#  b)
#  An den Boxplots aus a ist zu erkennen, dass die Person mit der Nummer A02
#  am besten abschneidet. Die zentralen 50 % der Fänge sowie der 
#  Median liegen im Vergleich zu den anderen Anglern am höchsten.
#  Zwar haben einige vereinzelt größere Fänge gemacht,
#  doch da es bei dem Vergleich um die Regelmäßigkeit schwerer Fänge
#  geht, liegt der Angler oder die Anglerin A02 vorne.

#  c)
angeln.median<-c(median(A01),median(A02),median(A03),median(A04),median(A05),median(A06),median(A07),median(A08),median(A09),median(A10),median(A11),median(A12))
boxplot(angeln.median,xlab="Median der angelnden Personen",ylab="Gewicht",main="Boxplot",col="grey")
median(angeln.median)

#  d)
#  In dem Boxplot aus c sind die Quantile der einzelnen Medians der Angelnden
#  zu erkennen. Die zentralen 50 % liegen recht dicht beieinander.
#  Außerdem gibt es nur zwei "Ausreißer".

