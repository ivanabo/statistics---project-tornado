mydata <- read.table("usa_broj_stanovnika_broj_tornada_5_god.csv",sep=",")

x <- vector("integer", 13)
y <- vector("integer", 13)

for(i in 1:13){
  y[i] <- mydata[i,1]
  x[i] <- mydata[i,2]
}

plot(x,y,xlab="broj stanovnika",ylab="frekvencija tornada")

regmodel <- lm(y~x)

plot(x,y, xlab="broj stanovnika", ylab="frekvencija")

abline(lm(y~x))

predict(regmodel, interval="confidence")

pc = predict(regmodel, interval="confidence")

matlines(x,pc)

summary(regmodel)

layout(matrix(1:4,2,2))
plot(regmodel)

e <- resid(regmodel)
yhat <- predict(regmodel)
max(abs(e-(y-yhat)))
sum(e)
sum(e*x)

cook <- cooks.distance(regmodel)
cook
hist(regmodel$res)
