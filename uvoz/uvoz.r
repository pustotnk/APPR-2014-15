# 2. faza: Uvoz podatkov

# Funkcija, ki uvozi podatke iz datoteke podatki.csv
#uvoziDruzine <- function() {
#  return(read.table("podatki/druzine.csv", sep = ";", as.is = TRUE,
#                      row.names = 1,
#                      col.names = c("obcina", "en", "dva", "tri", "stiri"),
#                      fileEncoding = "Windows-1250"))
#}

uvoziNogometasi <- function(){
  return(read.csv2(file="podatki/podatki.csv",row.names = 1,header=TRUE,fileEncoding = "Windows-1250"))
} 

# Zapišimo podatke v razpredelnico nogometaših.
cat("Uvažam podatke o nogometaših...\n")
nogometasi <- uvoziNogometasi()
fileEncoding="Windows-1250"
attach(nogometasi)
kategorije<-c('Beginner','Almost legend','Legend!')
STATUSS<-character(nrow(nogometasi))
STATUSS[Goals <30]<-'Beginner'
STATUSS[Goals >=30 & Goals <80]<-'Almost legend'
STATUSS[Goals >=80]<-'Legend!'
STATUS<-factor(STATUSS,levels=kategorije,ordered=TRUE)
detach(nogometasi)
dodatenstolpec<-data.frame(STATUS)
NOGOMETASI<-data.frame(nogometasi,STATUS)




# Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# fazah.