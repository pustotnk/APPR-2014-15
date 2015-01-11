pdf("slike/grafi1.pdf",paper="a4")
barplot(NOGOMETASI[NOGOMETASI$Goals>100,'Goals'],xlab="IGRALEC", ylab="ŠTEVILO ZADETKOV", main= 'ŠTEVILO ZADETKOV IGRALCEV, KI SO ZADELI VEČ KOT 100-KRAT', las=2, cex.names=0.75, col="blue")
pdf("slike/grafi1.pdf",paper="a4")
barplot(NOGOMETASI[NOGOMETASI$Appearances>50,'Appearances'],xlab="IGRALEC", ylab="ŠTEVILO NASTOPOV", main= 'ŠTEVILO NASTOPOV IGRALCEV, KI SO ZA KLUB NASTOPILI VEČ KOT 50 KRAT', las=2, cex.names=0.75, col="blue")

