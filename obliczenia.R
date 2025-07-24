install.packages("tidyverse")

library(readxl)

# Wczytywanie danych
dane <- read_excel("C:/Users/Maja/Desktop/dane.xlsx")
wojewodztwa <- dane$Nazwa
dane <- dane[, -1]

### ------------------------------------------------------------------
### METODA HELLWIGA
### ------------------------------------------------------------------

z_score <- function(x) {
  (x - mean(x)) / sd(x)
}
z <- as.data.frame(lapply(dane, z_score))
z_plus <- apply(z, 2, max)
d_i_plus <- apply(z, 1, function(row) sqrt(sum((row - z_plus)^2)))
d_bar <- mean(d_i_plus)
S_d <- sqrt(sum((d_i_plus - d_bar)^2) / length(d_i_plus))
d_0 <- d_bar + 2 * S_d
score_hellwig <- 1 - (d_i_plus / d_0)

### ------------------------------------------------------------------
### METODA SSW
### ------------------------------------------------------------------

z_ssw <- as.data.frame(lapply(dane, z_score))
score_ssw <- rowMeans(z_ssw)

### ------------------------------------------------------------------
### METODA MUZ
### ------------------------------------------------------------------

muz_norm <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}
z_muz <- as.data.frame(lapply(dane, muz_norm))
score_muz <- rowMeans(z_muz)

### ------------------------------------------------------------------
### METODA STRAHLA
### ------------------------------------------------------------------

strahl_norm <- function(x) {
  x / max(x)  # Normalizacja na podstawie maksymalnej wartości cechy
}

z_strahl <- as.data.frame(lapply(dane, strahl_norm))
score_strahl <- rowMeans(z_strahl)

### ------------------------------------------------------------------
### Tabela wyników
### ------------------------------------------------------------------

wyniki <- data.frame(
  Wojewodztwo = wojewodztwa,
  Score_Hellwig = round(score_hellwig, 4),
  Score_SSW = round(score_ssw, 4),
  Score_MUZ = round(score_muz, 4),
  Score_Strahl = round(score_strahl, 4)  
)
print(wyniki)

### ------------------------------------------------------------------
### Rysowanie wykresu radarowego
### ------------------------------------------------------------------

library(tidyverse)

ranking <- wyniki
ranking$Hellwig_rank <- rank(-ranking$Score_Hellwig)
ranking$SSW_rank <- rank(-ranking$Score_SSW)
ranking$MUZ_rank <- rank(-ranking$Score_MUZ)
ranking$Strahl_rank <- rank(-ranking$Score_Strahl)

ranking_long <- ranking %>%
  select(Wojewodztwo, ends_with("_rank")) %>%
  pivot_longer(cols = ends_with("_rank"), names_to = "Metoda", values_to = "Ranga") %>%
  mutate(Metoda = recode(Metoda,
                         "Hellwig_rank" = "Hellwig",
                         "SSW_rank" = "SSW",
                         "MUZ_rank" = "MUZ",
                         "Strahl_rank" = "Strahl"))

ggplot(ranking_long, aes(x = Wojewodztwo, y = Ranga, group = Metoda, color = Metoda)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  coord_polar() +
  scale_y_reverse(breaks = 1:16) +
  theme_minimal() +
  labs(
       y = "",
       x = "") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom")

### ------------------------------------------------------------------
### Obliczanie macierzy korelacji Spearman
### ------------------------------------------------------------------

wyniki_metod <- data.frame(
  Score_Hellwig = score_hellwig,
  Score_SSW = score_ssw,
  Score_MUZ = score_muz,
  Score_Strahl = score_strahl
)

macierz_korelacji_spearman <- cor(wyniki_metod, method = "spearman")

print("Macierz korelacji Spearmana dla wskaźników:")
print(macierz_korelacji_spearman)

### ------------------------------------------------------------------
### Szukanie metody o najwyższej zgodności
### ------------------------------------------------------------------

korelacja_spearman_no_diag <- macierz_korelacji_spearman
diag(korelacja_spearman_no_diag) <- NA

srednia_korelacja <- apply(korelacja_spearman_no_diag, 1, function(x) mean(x, na.rm = TRUE))

maks_korelacja <- max(srednia_korelacja)

najlepsze_metody <- names(srednia_korelacja[srednia_korelacja == maks_korelacja])

cat("Średnie korelacje:\n")
print(round(srednia_korelacja, 4))

cat("\nNajlepsze metody (remis):\n")
print(najlepsze_metody)


