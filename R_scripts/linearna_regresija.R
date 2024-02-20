mydata <- read.table("tornado_po_godinama_usa.csv",sep=";")

godine <- vector("integer", 65)
Tor <- vector("integer", 65)

for(i in 1:65){
  Tor[i] <- mydata[i,2]
}

a <- 1949
for(j in 1:65){
  b <- a+j
  godine[j] <- b
}


regmodel <- lm(Tor~godine)

plot(godine,Tor,xlab="godina", ylab="frekvencije")

abline(lm(Tor~godine))

predict(regmodel, interval="confidence")

pc = predict(regmodel, interval="confidence")
#plot(x,y)
#matlines(x,pc,lty=c(1,2,2))

summary(regmodel)

tornadoes.res <- resid(regmodel)
plot(Tor,tornadoes.res,ylab="Residuals", xlab="Tornadoes")

layout(matrix(1:4,2,2))
plot(regmodel)