pdf("slike/grafi1.pdf",paper="a4")
a<-rownames(NOGOMETASI)
barplot(NOGOMETASI[NOGOMETASI$Goals>100,'Goals'],names.arg = a[NOGOMETASI$Goals>100],xlab="IGRALEC", ylab="ŠTEVILO ZADETKOV", main= 'ŠTEVILO ZADETKOV IGRALCEV, KI SO ZADELI VEČ KOT 100-KRAT', las=2, cex.names=0.75, col="blue")
dev.off()

pdf("slike/grafi2.pdf",paper="a4")
a<-rownames(NOGOMETASI)
barplot(NOGOMETASI[NOGOMETASI$Appearances>80,'Appearances'],names.arg = a[NOGOMETASI$Appearances>80], ylab="ŠTEVILO NASTOPOV", main= 'ŠTEVILO IGRALCEV Z VEČ KOT 80 NASTOPI', las=2, cex.names=0.75, col="red")
dev.off()
