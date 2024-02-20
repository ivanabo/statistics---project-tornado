mydata <- read.table("drzave_rast.csv",sep=";")

y <- vector("integer", 65)

for(i in 1:65){
  y[i] <- mydata[8,i]
}

x <- vector("integer", 65)

a <- 1949
for(j in 1:65){
  b <- a+j
  x[j] <- b
}

regmodel <- lm(y~x)

plot(x,y)

abline(lm(y~x))

predict(regmodel, interval="confidence")

pc = predict(regmodel, interval="confidence")
plot(x,y)
matlines(x,pc,lty=c(1,2,2))

summary(regmodel)

