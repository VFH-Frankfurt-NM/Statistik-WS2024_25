library(mosaic)

# Aufgabe 3

personal <- c( 2417 ,  2429 ,  2357 ,  2370 ,  2337 ,  2402 ,  2345 ,  2373 )

# a)
mean( ~ personal)
sd( ~ personal)

# b)
median( ~ personal)
quantile( ~ personal, probs = c(0, 0.25, 0.5, 0.75, 1.00), type = 2)
max( ~ personal)
min( ~ personal)

#c
gf_boxplot( ~ personal)

# Aufgabe 4

koerpergroesse <- c( 160 ,   170 ,   180 ,   190 ,   192 ,   182 ,   181 ,   180 ,   176 ,   175,
                     161 ,   171 ,   179 ,   182 ,   181 ,   172 ,   177 ,   178 ,   175 ,   176,
                     150 ,   200 ,   160 ,   165 ,   167 ,   180 ,   178 ,   179 ,   176 ,   177,
                     180 ,   181 ,   183 ,   185 ,   186 ,   183 ,   182 ,   181 ,   178 ,   176 )

tally( ~ koerpergroesse)

gf_bar( ~ koerpergroesse)

gf_histogram( ~ koerpergroesse, bins = 6, binwidth = 10, center = 4.9)


# Aufgabe 5
df <- data.frame(
    reck   = c(9.3, 8.6, 9.1, 9.1, 9.0, 9.5),
    barren = c(9.1, 8.8, 9.0, 8.9, 8.7, 9.4)
)

gf_point(reck ~ barren, data = df)

# Pearson:
cor(reck ~ barren, data = df)

# Spearman
cor(reck ~ barren, data = df, method = "spearman")

# Aufgabe 6

df <- data.frame(
    fan = c( rep("j", 20), rep("n", 120),
             rep("j", 210), rep("n", 200),
             rep("j", 145), rep("n", 65),
             rep("j", 150), rep("n", 90)
            ),
    bierkonsum = c(rep("0<x<=1", 140),
                   rep("1<x<3", 410),
                   rep("3<=x<7", 210),
                   rep("7<=x",240)
                  )
)

tally( fan ~ bierkonsum, data = df)

xchisq.test(fan ~ bierkonsum, data = df)


# Aufgabe 7

df <- data.frame(
    duenger = c(6, 3, 8, 2, 7, 2),
    ernte   = c(30, 10, 22, 14, 36, 24)
)

# a

gf_point(ernte ~ duenger, data = df)

# b
linmod <- lm(ernte ~ duenger, data = df)
linmod

# c)
predict(linmod, data.frame(duenger = c(1)))
