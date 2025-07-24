library(readxl)

# Wczytywanie danych
dane <- read_excel("C:/Users/Maja/Desktop/dane.xlsx")

par(mfrow=c(5,3))

# Boxploty
boxplot(dane$X1, main = "Boxplot dla: powierzchni użytkowej bibliotek publicznych", col = "lightblue")

boxplot(dane$X2, main = "Boxplot dla: bibliotek publicznych oferujących dostęp do katalogu on-line", col = "lightgreen")

boxplot(dane$X3, main = "Boxplot dla: komputery dla użytkowników bibliotek publicznych z zainstalowanym programem do czytania książek elektronicznych", col = "lightcoral")

boxplot(dane$X4, main = "Boxplot dla: użytkownicy bibliotek publicznych", col = "lightyellow")

boxplot(dane$X5, main = "Boxplot dla: odwiedziny w bibliotekach publicznych", col = "lightpink")

boxplot(dane$X6, main = "Boxplot dla: godziny otwarcia bibliotek publicznych po godz. 16.00", col = "lightcyan")

boxplot(dane$X7, main = "Boxplot dla: centra, ośrodki kultury, domy kultury, kluby i świetlice", col = "lightgreen")

boxplot(dane$X8, main = "Boxplot dla: zajęcia prowadzone w formie grup arystycznych przez centra, domy, ośrodki kultury, kluby i świetlice", col = "lightblue")

boxplot(dane$X9, main = "Boxplot dla: zajęcia prowadzone w formie kół/klubów/sekcji przez centra, domy, ośrodki kultury, kluby i świetlice", col = "lightgray")

boxplot(dane$X10, main = "Boxplot dla: kursy prowadzone przez centra, domy, ośrodki kultury, kluby i świetlice", col = "lightsalmon")

boxplot(dane$X11, main = "Boxplot dla: lekcje muzealne i warsztaty prowadzone przez muzea", col = "lightseagreen")

boxplot(dane$X12, main = "Boxplot dla: lekcje teatralne i warsztaty prowadzone przez teatry i instytucje muzyczne", col = "lightpink")

boxplot(dane$X13, main = "Boxplot dla: imprezy (wydarzenia kulturalne) organizowane przez teatry i instytucje muzyczne, muzea, galerie sztuki, kina oraz centra, ośrodki kultury, domy kultury, kluby i świetlice", col = "orange")

boxplot(dane$X14, main = "Boxplot dla: teatry i instytucje muzyczne, muzea, galerie sztuki, kina", col = "red")

boxplot(dane$X15, main = "Boxplot dla: wystawy zrealizowane w kraju przez muzea i galerie sztuki", col = "green")


# Histogramy

par(mfrow=c(5,3))

hist(dane$X1, main = "Histogram dla: powierzchni użytkowej bibliotek publicznych", col = "lightblue", xlab = "X1")

hist(dane$X2, main = "Histogram dla: bibliotek publicznych oferujących dostęp do katalogu on-line", col = "lightgreen", xlab = "X2")

hist(dane$X3, main = "Histogram dla: komputery dla użytkowników bibliotek publicznych z zainstalowanym programem do czytania książek elektronicznych", col = "lightcoral", xlab = "X3")

hist(dane$X4, main = "Histogram dla: użytkownicy bibliotek publicznych", col = "lightyellow", xlab = "X4")

hist(dane$X5, main = "Histogram dla: odwiedziny w bibliotekach publicznych", col = "lightpink", xlab = "X5")

hist(dane$X6, main = "Histogram dla: godziny otwarcia bibliotek publicznych po godz. 16.00", col = "lightcyan", xlab = "X6")

hist(dane$X7, main = "Histogram dla: centra, ośrodki kultury, domy kultury, kluby i świetlice", col = "lightgreen", xlab = "X7")

hist(dane$X8, main = "Histogram dla: zajęcia prowadzone w formie grup arystycznych przez centra, domy, ośrodki kultury, kluby i świetlice", col = "lightblue", xlab = "X8")

hist(dane$X9, main = "Histogram dla: zajęcia prowadzone w formie kół/klubów/sekcji przez centra, domy, ośrodki kultury, kluby i świetlice", col = "lightgray", xlab = "X9")

hist(dane$X10, main = "Histogram dla: kursy prowadzone przez centra, domy, ośrodki kultury, kluby i świetlice", col = "lightsalmon", xlab = "X10")

hist(dane$X11, main = "Histogram dla: lekcje muzealne i warsztaty prowadzone przez muzea", col = "lightseagreen", xlab = "X11")

hist(dane$X12, main = "Histogram dla: lekcje teatralne i warsztaty prowadzone przez teatry i instytucje muzyczne", col = "lightpink", xlab = "X12")

hist(dane$X13, main = "Histogram dla: imprezy (wydarzenia kulturalne) organizowane przez teatry i instytucje muzyczne, muzea, galerie sztuki, kina oraz centra, ośrodki kultury, domy kultury, kluby i świetlice", col = "orange", xlab = "X13")

hist(dane$X14, main = "Histogram dla: teatry i instytucje muzyczne, muzea, galerie sztuki, kina", col = "red", xlab = "X14")

hist(dane$X15, main = "Histogram dla: wystawy zrealizowane w kraju przez muzea i galerie sztuki", col = "green", xlab = "X15")
