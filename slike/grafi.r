cairo_pdf("slike/grafi1.pdf", family = "Arial")
a<-rownames(NOGOMETASI)
barplot(NOGOMETASI[NOGOMETASI$Goals>100,'Goals'],names.arg = a[NOGOMETASI$Goals>100],xlab="IGRALEC", ylab="ŠTEVILO ZADETKOV", main= 'ŠTEVILO ZADETKOV IGRALCEV, KI SO ZADELI VEČ KOT 100-KRAT', las=1, cex.names=0.75, col="blue")
dev.off()

cairo_pdf("slike/grafi2.pdf", family = "Arial")
a<-rownames(NOGOMETASI)
barplot(NOGOMETASI[NOGOMETASI$Appearances>150,'Appearances'],names.arg = a[NOGOMETASI$Appearances>150],xlab=" ", ylab="ŠTEVILO NASTOPOV", main= 'ŠTEVILO NASTOPOV IGRALCEV Z VEČ KOT 150 NASTOPI', las=2, cex.names=0.3, col="red")
dev.off()

