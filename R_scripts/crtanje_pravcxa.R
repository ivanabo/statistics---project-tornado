x = c(1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014)
y = c(1267, 1180, 1529, 1517, 1167, 1350, 1039, 1535, 1946, 1342, 1263, 1237, 1957, 1271, 1445, 2065, 1032, 1053, 1009)

plot(x,y)

regr = lm(x~y)
plot(x,y)
abline(regr$coefficients)

f=function(t)+ exp(regr$coefficients[1]+regr$coefficients[2]*t)
plot(x,y)
curve(f,add=T)
pc=predict(regr,interval="confidence")
plot(x,y)

fit<-lm(y~x)
lines(x, predict(fit, data.frame(x)), col="purple")

matlines(x,pc)
