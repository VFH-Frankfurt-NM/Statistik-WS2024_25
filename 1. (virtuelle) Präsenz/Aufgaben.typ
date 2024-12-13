#set document(
  title: [Aufgaben zur Statistik],
  author: "Norman Markgraf",
  date: auto
 )
#let jahr = 2024
#let semester = "WiSe 2024/25"
#set text(
  lang: "de",
  region: "de",
  size: 12pt,
  font: (
    /* "Gill Sans", */
    /* "Candara", */
    /* "Bauhaus 93", */
    /* "Lucida Sans", */
    "Verdana",
    "Arial",
    "Helvetica",
    "Monaco",
     "Calibri",
    "New Computer Modern Math",
    "PT Sans", )
)
#set page(
  paper: "a4",
  numbering: "1 / 1",
  header: align(right + horizon, text(8pt, font: "PT Sans")[#semester])
)


#align(center, text(24pt, blue, font: "PT Sans",
  [
    #context document.title
  ] +
  text(14pt, green, font: "PT Sans",
      [
        \
        #context document.author.join()
      ]
    )
  )
)

#set heading(
  numbering: "1.",
)
#show heading.where(level:1): it => text(
  blue,
  font: "PT Sans",
  [\ #context counter(heading).display() ] +  it.body
)


= Aufgabe

Berechnen Sie das geometrische Mittel der folgenden Werte!

#align(
  center,
  table(
    columns: 7,
    stroke: none,
    inset: (
      x: 1.1em,
      y: 0.75em
    ),
    [1;], [3;], [2;], [10;], [3;], [4;], [5]
  )
)


= Aufgabe

Ein Guthaben von 1000,- € wurde in den letzten Jahren wie folgt verzinst:
#let nums = range(jahr - 5, jahr)
#let zins = ("+12%;", "+7%;", "+2%;", "-4%;", "-10%")
#let l = nums.zip(zins).flatten()

#align(
  center,
  table(
   columns: 6,
   stroke: none,
   inset: (
      x: 1.3em,
      y: 0.75em
    ),
    ..l.map( i =>  str(i) )
  )
)



Ermitteln Sie einen durchschnittlichen, also konstanten, Zinssatz $i$!

= Aufgabe

Das beschäftigte Pflegepersonal in den Krankenhäusern eines Landkreises wurde
in einer Stichprobe der letzte acht Jahren in der folgenden Tabelle aufgelistet:

#let jahre = range(jahr - 8, jahr)

#align(
  center,
  table(
    columns: 9,
    inset: 0.75em,
    [*Jahr*],     ..jahre.map(n => str(n)),
    [*Personal*], [2417], [2429], [2357], [2370], [2337], [2402], [2345], [2373]
  )
)

#set enum(numbering: "a)")

+ Berechnen Sie das arithmetische Mittel ($dash(x)$), sowie die Standardabweichung ($s$)!

+ Berechnen Sie nun den Median ($x_0.5$), die beiden Quartile ($Q_1$, $Q_3$), bestimmen Sie das Maximum ($x_max$) und das Minimum ($x_min$)!

+ Skizzieren Sie den zugehörigen Boxplot!

#pagebreak()

= Aufgabe

In einem Statistik-Kurs sind 40 Personen mit den folgenden Körpergrößen (in _cm_):


#align(
  center,
  table(
    columns: 15,
    inset: 0.35em,
    stroke: none,
  [160,],  [170,],  [180,],  [190,],  [192,],  [182,],  [181,],  [180,],  [176,],  [175,],
  [161,],  [171,],  [179,],  [182,],  [181,],  [172,],  [177,],  [178,],  [175,],  [176,],
  [150,],  [200,],  [160,],  [165,],  [167,],  [180,],  [178,],  [179,],  [176,],  [177,],
  [180,],  [181,],  [183,],  [185,],  [186,],  [183,],  [182,],  [181,],  [178,],  [176]
  )
)

#set enum(numbering: "a)")

+ Erstellen Sie eine (erweiterte) Verteilung inkl. empirischer Verteilungsfunktion (kumulierte Summenfunktion) auf.

+ Klassieren Sie die Daten mit einer Klassenbreite von 10 cm.

+ Berechnen Sie aus den klassierten Daten den Mittelwert und den Median.


= Aufgabe

Bei einem Turnierwettkampf haben sechs Turner die folgenden Bewertungen an zwei Geräten erhalten:

#let count = 6
#let nums = range(1, count + 1)

#align(
  center,
  table(
    columns: count + 1,
    inset: (
      x: 1.3em,
      y: 0.75em
    ),
    [*Turner Nr.*], ..nums.map(n => strong(str(n))),
    [*Reck*]      , [9,3], [8,6], [9,1], [9,1], [9,0], [9,5],
    [*Barren*]    , [9,1], [8,8], [9,0], [8,9], [8,7], [9,4]
  )
)

Berechnen Sie
#set enum(numbering: "a)")

+ den Rangkorrelationskoeffizienten nach Spearman,

+ den Korrelationskoeffizienten nach Pearson.


#pagebreak()

= Aufgabe

Bei einer Befragung von Passanten in einer Fußgängerzone bezüglich ihres Bierkonsums in Litern pro Woche und ihrer Selbsteinschätzung als Fußballfan ergaben sich folgende Daten:

#block(width: 90%, inset: 8pt,
  text(style: "italic", weight: "light",
[20 Fußballfans und 120 Nichtfußballfans gaben einen Bierkonsum von höchstens 1 Liter pro Woche an.
Zwischen 1 und 3 Liter pro Woche trinken 210 Fußballfans und 200 Nichtfußballfans.
150 Fußballfans und 90 Nichtfußballfans gaben einen Bierkonsum von mindestens 7 Litern an.
145 Fußballfans und 65 Nichtfußballfans lagen in der verbleibenden Zwischengruppe.])
)
\

#set enum(numbering: "a)")

+ Stellen Sie die zugehörige Kontingenztabelle auf.

+ Errechnen Sie die Randhäufigkeiten (absolut).

+ Berechnen Sie die bedingte Verteilung des Bierkonsums für Fußballfans.

+ Wie sähe die Kontingenztabelle aus, wenn Bierkonsum und Fußballaffinität unabhängig wären?

+ Berechnen Sie ein geeignetes Zusammenhangsmaß für die beiden Merkmale.


#pagebreak()

= Aufgabe

In einem bestimmten Bereich hängt der Ernteertrag eines landwirtschaftlichen Gutes von der Menge eines eingesetzten Düngemittels je Hektar ab.
Auf sechs Versuchsfeldern wird der Düngemitteleinsatz getestet.

Dabei wurden die folgenden Erträge je Hektar erzielt:

\
#let count = 6
#let nums = range(1, count + 1)

#align(
  center,
  table(
    columns: count + 1,
    inset: (
      x: 1.3em,
      y: 0.75em
    ),
    align: horizon,
    [*Versuchsfeld Nr.*], ..nums.map(n => strong(str(n))),
    [*Düngemitteleinsatz\ je _100kg_*], [6],   [3],   [8],   [2],   [7],   [2],
    [*Ernteertrag je _t_*]           ,  [30],  [10],  [22],  [14],  [36],  [24]
  )
)

\
#set enum(numbering: "a)")

+ Stellen Sie in einem Streudiagramm den Ernteertrag auf Grundlage des Düngemitteleinsatzes dar.

+ Stellen Sie den Ernteertrag ($tilde(y)$) in Abhängigkeit vom Düngemitteleinsatz ($x$) durch eine lineare Funktion ($tilde(y) = tilde(beta)_0 + tilde(beta)_1 dot x$) dar.

+ Wie hoch wäre demnach der Ernteertrag bei einer Tonne Düngemittel?

