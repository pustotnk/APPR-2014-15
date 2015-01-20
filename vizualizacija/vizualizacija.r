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
barve.zemljevid[is.na(barve.zemljevid)] <- "black"

svet2 <- svet1[svet1$name_long %in% imenadrzav,]
co <- coordinates(svet2)
imena.drzav <- as.character(svet2$name_long)
rownames(co) <- imena.drzav

names(imena.drzav) <- imenadrzav
imena.drzav["Paraguay"] <- "NL"

names(imena.drzav) <- imenadrzav
imena.drzav["Portugal"] <- "P"


co['England',2] <- co['England',2]+1.2
co['England',1] <- co['England',1]+1.2
co['Denmark',2] <- co['Denmark',2]+2.0
co['Netherlands',2] <- co['Netherlands',2]+2.0
co['Portugal',2] <- co['Portugal',2]+1.2
co['Portugal',1] <- co['Portugal',1]-0.3
co['Chile',1] <- co['Chile',1]-0.8
co['Paraguay',2] <- co['Paraguay',2]+2.0
co['Austria',2] <- co['Austria',2]+2.0
co['Austria',1] <- co['Austria',1]+0.3
co['Hungary',2] <- co['Hungary',2]+1.8
co['Bulgaria',2] <- co['Bulgaria',2]+1.8
co['Germany',2] <- co['Germany',2]+1.4
co['Germany',1] <- co['Germany',1]-0.7
stadion<-data.frame("long" = c(2.12280), "lat"= c(41.38087))
pdf("slike/igralci.pdf", width=8.27, height=11.96)
plot(svet1, xlim=c(-69, 50), ylim=c(-33,73), col=barve.zemljevid, bg="lightblue")
text(co,labels=imena.drzav,pos = 1, cex = 0.4,)
points(coordinates(stadion), type = "p", pch = 4, cex = 0.5, col = "orange")

legend("topleft", title = 'število igralcev po državah', text.font = 3,legend = stevilo, fill = topo.colors(length(stevilo)))
dev.off()
