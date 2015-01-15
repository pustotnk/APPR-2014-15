# 3. faza: Izdelava zemljevida

# Uvozimo funkcijo za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r")

# Uvozimo zemljevid.
cat("Uvažam zemljevid...\n")
svet <- uvozi.zemljevid("http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_map_units.zip",
                        "svet", "ne_110m_admin_0_map_units.shp", mapa = "zemljevid",
                        encoding = "Windows-1252")
svet1<- svet[svet$continent %in% c("Europe", "Africa","South America","North America","Asia"),]

drzave <- table(NOGOMETASI$Nationality)
imenadrzav<-names(drzave)
stevilo <- unique(drzave)
stevilo <- stevilo[order(stevilo)]
barve <- topo.colors(length(stevilo))[match(drzave, stevilo)]
names(barve) <- names(drzave)
barve.zemljevid <- barve[as.character(svet1$name_long)]
barve.zemljevid[is.na(barve.zemljevid)] <- "white"

mojsvet <- svet1[svet1$name_long %in% imenadrzav,]
koordinate <- coordinates(mojsvet)
imena.drzav <- as.character(mojsvet$name_long)
rownames(koordinate) <- imena.drzav

stadion<-data.frame("long" = c(2.12280), "lat"= c(41.38087))
pdf("slike/igralci.pdf", width=8.27, height=11.96)
plot(svet1, xlim=c(-69, 50), ylim=c(-33,73), col=barve.zemljevid, bg="lightblue")
text(koordinate,labels=imena.drzav,pos = 1, cex = 0.25,)
points(coordinates(stadion), type = "p", pch = 1, cex = 0.1, col = "red")
legend("topleft", title = 'število igralcev po državah', text.font = 3,legend = stevilo, fill = topo.colors(length(stevilo)))
dev.off()
