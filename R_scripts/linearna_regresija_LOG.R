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

lnTor <- log(Tor)

regmodel <- lm(lnTor~godine)

plot(godine,lnTor,xlab="godina", ylab="log frekvencije")

abline(lm(lnTor~godine))

predict(regmodel, interval="confidence")

pc = predict(regmodel, interval="confidence")
plot(godine,lnTor)
matlines(godine,pc,lty=c(1,2,2))

summary(regmodel)

layout(matrix(1:4,2,2))
plot(regmodel)

f <- function(t) + exp(regmodel$coefficients[1] + regmodel$coefficients[2]*t)
plot(godine,Tor)
curve(f,add=T)
pc=predict(regmodel,interval="confidence")
plot(godine,Tor)
matlines(godine,exp(pc),lty=c(1,2,2))

plot(regmodel)

