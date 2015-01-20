# Poročilo
<<<<<<< HEAD

1. FAZA:
=======
>>>>>>> f35d35af88a5c0c15dbdeb54928808de935941ec

Za tematiko moje seminarske naloge, sem si kot navijač nogometnega kluba FC Barcelona izbral analizo podatkov najboljših štirideset strelcev vseh časov, ki so igrali za ta klub. Naloge se bom lotil tako, da bom podatke iz spletne strani prenesel v program Microsoft Office Excel Worksheet in oblikoval tabelo ki se bo od originalne razlikovala v tem, da bom dodal par podatkov s katerimi bom kasneje lažje operiral, nekatere pa vzel ven iz originalne tabele. Za vsakega igralca bom podal:

* državo iz katere igralec prihaja ( imenska spremenljivka ).

* standardno pozicijo v igri v angleščini (forward, midfielder, winger,...).

* Teža igralca ( številska spremeljivka v kg )

* število nastopov za klub ( številska spremnljivka ).

* goli za klub ( številska spremenljivka ).

* naziv nogometaša glede na število zadetkov v klubu ( igralce bom razporedil v kategorije: legenda, strelec, povprečnež, začetnik. )

Svoje potatke bom uvozil iz spletnega medija: 

http://en.wikipedia.org/wiki/List_of_FC_Barcelona_players

<<<<<<< HEAD
2. FAZA: 

V začetku druge faze sem uvozil tabelo, ki sem jo dobil tako, da sem iz spletne strani podatke pretvoril v Excel 2013, nato pa jih shranil v CSV obliki. Tabeli sem dodal dotaten stolpec ki glede na število nastopov pove kakšno "oznako" ima igralec v klubu. Tabelo sem malo vizualno polepšal ter uporabil ukaz row.names, da sem pridobil imena vrstic. 
Sledilo je konstruiranje grafov. Najprej sem se odločil da bom izdelal grafe o golih in nastopih. Napisal sem kodo za graf v kateri sem moral zaradi preglednosti izbrisati xlab (IGRALCI) in pod tabelo dodati imena igralcev. Risal sem s funkcijo barplot() s katero sem prikazal podatke iz tabele. Prvi graf sem poimenoval "ŠTEVILO ZADETKOV IGRALCEV, KI SO ZADELI VEC KOT 100−KRAT", drugega pa "ŠTEVILO NASTOPOV IGRALCEV Z VEC KOT 150 NASTOPI". Za prvi graf sem izbral modro, za drugi pa rdečo barvo. Pri prvemu grafu sem izbral las=1, da mi je imena izpisalo vodoravno, pri drugem pa ukaz las=2, da mi je imena izpisalo navpično, popravil sem velikost črk in vsa imena ki so se mi izpisovala z vprašaji tako da so na grafu razvidna cela imena.

3. FAZA:

Tretjo fazo sem začel z uvozom zemljevida ki bo prikazoval s katerih držav in kontinentov prihajajo igralci Barcelone. Na zemljevidu so razvidni naslednji kontinenti: Evropa, Afrika, Južna Amerika, iz naslednjih kontinetov so vsi moji igralci, za lepšo postavitev in prikaz pa sem dodal še Severno Ameriko. Z ukazi in malo igranja sem zemljevidu dodal imena, ter jih nato, ker so bili narobe postavljeni, z uporabo koordinat prestavil na pravo mesto. Našel sem tudi koordinate mojega stadiona, ter jih vnesel na zemljevid, na točki koordinat sedaj stoji križec ki sem ga obarval oranžno.
=======
2. FAZA: V začetku druge faze sem uvozil tabelo, ki sem jo dobil tako, da sem iz spletne strani podatke pretvoril v Excel 2013, nato pa jih shranil v CSV obliki. Tabeli sem dodal dotaten stolpec ki glede na število nastopov pove kakšno "oznako" ima igralec v klubu. Tabelo sem malo vizualno polepšal ter uporabil ukaz row.names, da sem pridobil imena vrstic. 
Sledilo je konstruiranje grafov. Najprej sem se odločil da bom izdelal grafe o golih in nastopih. Napisal sem kodo za graf v kateri sem moral zaradi preglednosti izbrisati xlab (IGRALCI) in pod tabelo dodati imena igralcev. Risal sem s funkcijo barplot() s katero sem prikazal podatke iz tabele. Prvi graf sem poimenoval "ŠTEVILO ZADETKOV IGRALCEV, KI SO ZADELI VEC KOT 100−KRAT", drugega pa "ŠTEVILO NASTOPOV IGRALCEV Z VEC KOT 150 NASTOPI". Za prvi graf sem izbral modro, za drugi pa rdečo barvo. Pri prvemu grafu sem izbral las=1, da mi je imena izpisalo vodoravno, pri drugem pa ukaz las=2, da mi je imena izpisalo navpično, popravil sem velikost črk in vsa imena ki so se mi izpisovala z vprašaji tako da so na grafu razvidna cela imena.

3. FAZA:Tretjo fazo sem začel z uvozom zemljevida ki bo prikazoval s katerih držav in kontinentov prihajajo igralci Barcelone. Na zemljevidu so razvidni naslednji kontinenti: Evropa, Afrika, Južna Amerika, iz naslednjih kontinetov so vsi moji igralci, za lepšo postavitev in prikaz pa sem dodal še Severno Ameriko. Z ukazi in malo igranja sem zemljevidu dodal imena, ter jih nato, ker so bili narobe postavljeni, z uporabo koordinat prestavil na pravo mesto. Našel sem tudi koordinate mojega stadiona, ter jih vnesel na zemljevid, na točki koordinat sedaj stoji križec ki sem ga obarval oranžno.
>>>>>>> f35d35af88a5c0c15dbdeb54928808de935941ec
