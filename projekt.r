source("fontconfig.r", encoding = "UTF-8");
# # Pobrišemo PDF-je in počistimo delovno okolje
# silent <- TRUE
# source("clearpdf.r", encoding = "UTF-8")
# 2. faza: Obdelava, uvoz in čišcenje podatkov
source("uvoz/uvoz.r", encoding="UTF-8")
source("slike/grafi.r", encoding="UTF-8")
#3. faza: Analiza in vizualizacija podatkov
source("vizualizacija/vizualizacija.r", encoding = "UTF-8")
# 4. faza: Napredna analiza podatkov
source("analiza/analiza.r")
cat("Končano.\n")