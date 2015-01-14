# Analiza podatkov s programom R, 2014/15
Avtor: Tomaž Pustotnik

Mentor: asist. dr. Janoš Vidali

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2014/15.

## Tematika


Za tematiko moje seminarske naloge, sem si kot navijač nogometnega kluba FC Barcelona izbral analizo podatkov najboljših štirideset strelcev vseh časov, ki so igrali za ta klub. Naloge se bom lotil tako, da bom podatke iz spletne strani prenesel v program Microsoft Office Excel Worksheet in oblikoval tabelo ki se bo od originalne razlikovala v tem, da bom dodal par podatkov s katerimi bom kasneje lažje operiral, nekatere pa vzel ven iz originalne tabele. Za vsakega igralca bom podal:

* državo iz katere igralec prihaja ( imenska spremenljivka ).

* standardno pozicijo v igri v angleščini (forward, midfielder, winger,...).

* Teža igralca ( številska spremeljivka v kg )

* število nastopov za klub ( številska spremnljivka ).

* goli za klub ( številska spremenljivka ).

* naziv nogometaša glede na število zadetkov v klubu ( igralce bom razporedil v kategorije: legenda, strelec, povprečnež, začetnik. )

Svoje potatke bom uvozil iz spletnega medija: 

http://en.wikipedia.org/wiki/List_of_FC_Barcelona_players


## Program

Glavni program se nahaja v datoteki `projekt.r`. Ko ga poženemo, se izvedejo
programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Slike, ki jih program naredi, se shranijo v mapo
`slike/`. Zemljevidi v obliki SHP, ki jih program pobere, se shranijo v mapo
`zemljevid/`.

## Poročilo

Poročilo se nahaja v mapi `porocilo/`. Za izdelavo poročila v obliki PDF je
potrebno datoteko `porocilo/porocilo.tex` prevesti z LaTeXom. Pred tem je
potrebno pognati program, saj so v poročilu vključene slike iz mape `slike/`.
