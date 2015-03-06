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
plot(normaliziran, col = barve[p], xlab = "Goli za Barcelono", ylab = "Goli za reprezentanco")
legend("topright", legend = c("prva četrtina", "druga četrtina", "tretja četrtina", "zadnja četrtina"), col = barve, pch = 1)
dev.off()




#Najboljsiigralci[p %in% c(1),]


#norm <- scale(as.matrix(Najboljsiigralci[c(5)]))
#matrikarazdalj1<-dist(norm)
#razdelitev2 <- hclust(matrikarazdalj1, method = "single")
#pdf("slike/najboljsivBarceloni.pdf")
#plot(razdelitev2, hang=-1, cex=0.6, main = "USPEŠNPST V BARCELONI")
#rect.hclust(razdelitev2,k=6,border="blue")
#dev.off()



goalsforbarcelona<-read.csv2("podatki/goalsforbarcelona.csv",
                            skip=0,
                            row.name=1,
                            header=TRUE,
                            na.strings=" ",
                            fileEncoding="UTF-8")






internationalgoals<-read.csv2("podatki/internationalgoals.csv",
                              skip=0,
                              row.name=1,
                              header=TRUE,
                              na.strings=" ",
                              fileEncoding="UTF-8")



Leta<-row.names(goalsforbarcelona)
Leta<-as.numeric(Leta)
danigoli<-goalsforbarcelona$Goli 

lin<-lm(danigoli~Leta)
#abline(lin, col="red")

kvad<-lm(danigoli~I(Leta^2)+Leta)
#curve(predict(kvad, data.frame(Leta=x)),add=TRUE,col="blue")

loess<-loess(danigoli~Leta)
#curve(predict(loess, data.frame(Leta=x)),add=TRUE,col="magenta")

library(mgcv)
gam<-gam(danigoli~s(Leta))
#curve(predict(gam, data.frame(Leta=x)),add=TRUE,col="green")


pdf("slike/napoved.pdf")
napoved<-function(x,model){predict(model,data.frame(Leta=x))}
plot(Leta,danigoli,xlim=c(2004,2024),ylim=c(0,120),
     xlab="Leto",ylab="Število danih zadetkov",
     main="Napoved števila golov za Barcelono do l. 2024")
curve(napoved(x, lin), add=TRUE,col="red")
curve(napoved(x, kvad), add=TRUE, col="blue")
curve(napoved(x, gam), add=TRUE, col="green")
text(2020,20,paste0(round(lin$coefficients[1],2),round(lin$coefficients[2],2),"x"),cex=1.0, col="red")
text(2020,15,paste0(round(kvad$coefficients[1],2),round(kvad$coefficients[2],2),"x",round(kvad$coefficients[3],2),"x^2"),cex=1.0, col="blue")
legend("topleft", c("Linerana metoda", "Kvadratna metoda","Gam metoda"),lty=c(1,1), col = c("red","blue","green"))
dev.off()



Leta<-row.names(internationalgoals)
Leta<-as.numeric(Leta)
danigoli<-internationalgoals$Goli 

lin<-lm(danigoli~Leta)
#abline(lin, col="red")

kvad<-lm(danigoli~I(Leta^2)+Leta)
#curve(predict(kvad, data.frame(Leta=x)),add=TRUE,col="blue")

loess<-loess(danigoli~Leta)
#curve(predict(loess, data.frame(Leta=x)),add=TRUE,col="magenta")

library(mgcv)
gam<-gam(danigoli~s(Leta))
#curve(predict(gam, data.frame(Leta=x)),add=TRUE,col="green")


pdf("slike/napoved1.pdf")
napoved<-function(x,model){predict(model,data.frame(Leta=x))}
plot(Leta,danigoli,xlim=c(2004,2024),ylim=c(0,35),
     xlab="Leto",ylab="Število danih zadetkov",
     main="Napoved števila golov za reprezentanco do l. 2024")
curve(napoved(x, kvad), add=TRUE, col="red")
curve(napoved(x, gam), add=TRUE, col="blue")
text(2020,26,paste0(round(kvad$coefficients[1],2),round(kvad$coefficients[2],2),"x",round(kvad$coefficients[3],2),"x^2"),cex=1.0, col="red")
legend("topleft", c("Kvadratna metoda","Gam metoda"),lty=c(1,1), col = c("red","blue","green"))
dev.off()



