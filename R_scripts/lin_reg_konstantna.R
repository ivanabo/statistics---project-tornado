
x <- c(29.2771428571,30.8921478,32.7428571429,32.3688756,31.9671428571,34.264998,35.3414285714,35.344265,35.3471428571,36.1241153,37.04,38.00568,38.1785714286)
y <- c(38,83,115,271,142,238,280,276,296,156,233,302,307)


regmodel <- lm(y~x)

plot(x,y,xlab="prosjecna gustoca naseljenosti", ylab="frekvencije")

abline(lm(y~x))

predict(regmodel, interval="confidence")

pc = predict(regmodel, interval="confidence")

summary(regmodel)

layout(matrix(1:4,2,2))
plot(regmodel)