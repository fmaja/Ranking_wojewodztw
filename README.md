# Porównanie metod statystycznych w rankingu województw Polski według rozwoju kulturowego

Projekt miał na celu porównanie czterech metod statystycznych służących do porządkowania województw Polski pod względem poziomu rozwoju kultury. Praca koncentrowała się na analizie dostępnych danych wtórnych dotyczących działalności instytucji kultury w różnych regionach kraju.

## Zastosowane metody porządkowania:
- Technika Hellwiga
- Metoda Standaryzowanej Sumy Wartości (SSW)
- Technika MUZ (metoda unitaryzacji zerowanej)
- Metoda Strahla

## Zmienne wykorzystane w analizie:
Analizę przeprowadzono na podstawie danych wtórnych pochodzących z Głównego Urzędu Statystycznego (GUS) w Warszawie z roku 2023. Dane obejmują między innymi:
- Powierzchnia użytkowa bibliotek publicznych
- Liczba instytucji kultury, wydarzeń i kursów
- Lekcje muzealne i teatralne
- Liczba komputerów z e-bookami
- Otwarcie bibliotek po godz. 16:00
- Liczba użytkowników i odwiedzin
- Zajęcia artystyczne, koła tematyczne, wystawy

## Technologie:
- R (obliczenia statystyczne, wizualizacje)
- Excel (wstępna obróbka danych)
- LaTeX (opracowanie raportu)

## Wyniki:
Wszystkie metody umożliwiły utworzenie spójnych rankingów województw. Najwyższy poziom rozwoju kulturowego osiągnęło województwo małopolskie, a najniższy — kujawsko-pomorskie. Metody MUZ i SSW dały najbardziej zbieżne rezultaty. Zastosowano również analizę współczynnika korelacji rang Spearmana i podział na kwartyle.

## Zawartość repozytorium:
- `Ranking województw Polski według rozwoju kulturowego.pdf` - pełny raport analizy
- `Analiza danych.xlsx` – dane źródłowe + przekształcenia i statystyki
- `obliczenia.R` – obliczenia dla 4 metod porządkowania
- `wykresy.R` – generowanie wykresów diagnostycznych
- `dane.xlsx` – baza danych przystosowana do analizy w R

##  Autorzy
- Maja Fiszer
- Jakub Gilewski
- Evnika Smirnova
- Dominik Uchman
