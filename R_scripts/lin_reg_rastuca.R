
x <- c(19.8814285714,22.369,24.6471428571,26.94,29.0814285714,33.46,35.9757142857,40.25,42.8714285714,47.5698,51.8485714286,57.12,60.6428571429)
y <- c(43,171,148,201,216,340,330,189,344,476,382,319,281)


regmodel <- lm(y~x)

plot(x,y,xlab="prosjecna gustoca naseljenosti", ylab="frekvencije")

abline(lm(y~x))

predict(regmodel, interval="confidence")

pc = predict(regmodel, interval="confidence")

summary(regmodel)

layout(matrix(1:4,2,2))
plot(regmodel)