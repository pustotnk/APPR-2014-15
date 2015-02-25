# 4. faza: Analiza podatkov

# Uvozimo funkcijo za uvoz spletne strani.
Najboljsiigralci<-read.csv2("podatki/proojekt.csv",
                           skip=0,
                           row.name=1,
                           header=TRUE,
                           na.strings="-",
                           fileEncoding="Windows-1252")

# Preberemo spletno stran v razpredelnico.
normaliziran <- scale(as.matrix(Najboljsiigralci[c(5,7)]))
matrikarazdalj<-dist(normaliziran)
razdelitev<- hclust(matrikarazdalj, method = "complete")
pdf("slike/najboljsi.pdf")
plot(razdelitev, hang=-1, cex=0.6, main = "USPEŠNOST")
rect.hclust(razdelitev,k=4,border="red")
dev.off()


p <- cutree(razdelitev, k=4)
barve=c("red", "green", "blue","yellow")
table(p)
barve
pdf("slike/najboljsi1.pdf")
pairs(normaliziran, col = barve[p])
dev.off()


Najboljsiigralci[p %in% c(1),]


norm <- scale(as.matrix(Najboljsiigralci[c(5)]))
matrikarazdalj1<-dist(norm)
razdelitev2 <- hclust(matrikarazdalj1, method = "single")
pdf("slike/najboljsivBarceloni.pdf")
plot(razdelitev2, hang=-1, cex=0.6, main = "USPEŠNPST V BARCELONI")
rect.hclust(razdelitev2,k=6,border="blue")
dev.off()

# Narišemo graf v datoteko PDF.
#cat("Rišem graf...\n")
#pdf("slike/naselja.pdf", width=6, height=4)
#plot(tabela[[1]], tabela[[4]],
 #    main = "Število naselij glede na površino občine",
#     xlab = "Površina (km^2)",
 #    ylab = "Št. naselij")
#dev.off()