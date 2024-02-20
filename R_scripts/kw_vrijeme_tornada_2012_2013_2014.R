podaci <- read.csv("2012.csv")

new_podaci <- podaci[podaci[,"EVENT_TYPE"]=="Tornado",]
vrijeme_beg <- new_podaci[,4]

vrijeme_beg_bolje <- vector("integer",1033)

br <- 0
for(i in 1:1033){
  if(vrijeme_beg[i] != 0) br <- br+1
}

vrijeme_beg_bolje <- vector("integer", 1033)

j <- 1

for(i in 1:1033){
  if(vrijeme_beg[i] != 0){
    vrijeme_beg_bolje[j] <- vrijeme_beg[i]
    
    j <- j+1
  }
}

hist(vrijeme_beg_bolje)

for(i in 1:1033){
  if(vrijeme_beg_bolje[i] > 2329 | vrijeme_beg_bolje[i] < 29){
    vrijeme_beg_bolje[i] <- 0
  }
  
  if(vrijeme_beg_bolje[i] > 29 & vrijeme_beg_bolje[i] < 130){
    vrijeme_beg_bolje[i] <- 1
  }
  
  if(vrijeme_beg_bolje[i] > 129 & vrijeme_beg_bolje[i] < 230){
    vrijeme_beg_bolje[i] <- 2
  }
  
  if(vrijeme_beg_bolje[i] > 229 & vrijeme_beg_bolje[i] < 330){
    vrijeme_beg_bolje[i] <- 3
  }
  
  if(vrijeme_beg_bolje[i] > 329 & vrijeme_beg_bolje[i] < 430){
    vrijeme_beg_bolje[i] <- 4
  }
  
  if(vrijeme_beg_bolje[i] > 429 & vrijeme_beg_bolje[i] < 530){
    vrijeme_beg_bolje[i] <- 5
  }
  
  if(vrijeme_beg_bolje[i] > 529 & vrijeme_beg_bolje[i] < 630){
    vrijeme_beg_bolje[i] <- 6
  }
  
  if(vrijeme_beg_bolje[i] > 629 & vrijeme_beg_bolje[i] < 730){
    vrijeme_beg_bolje[i] <- 7
  }
  
  if(vrijeme_beg_bolje[i] > 729 & vrijeme_beg_bolje[i] < 830){
    vrijeme_beg_bolje[i] <- 8
  }
  
  if(vrijeme_beg_bolje[i] > 829 & vrijeme_beg_bolje[i] < 930){
    vrijeme_beg_bolje[i] <- 9
  }
  
  if(vrijeme_beg_bolje[i] > 929 & vrijeme_beg_bolje[i] < 1030){
    vrijeme_beg_bolje[i] <- 10
  }
  
  if(vrijeme_beg_bolje[i] > 1029 & vrijeme_beg_bolje[i] < 1130){
    vrijeme_beg_bolje[i] <- 11
  }
  
  if(vrijeme_beg_bolje[i] > 1129 & vrijeme_beg_bolje[i] < 1230){
    vrijeme_beg_bolje[i] <- 12
  }
  
  if(vrijeme_beg_bolje[i] > 1229 & vrijeme_beg_bolje[i] < 1330){
    vrijeme_beg_bolje[i] <- 13
  }
  
  if(vrijeme_beg_bolje[i] > 1329 & vrijeme_beg_bolje[i] < 1430){
    vrijeme_beg_bolje[i] <- 14
  }
  
  if(vrijeme_beg_bolje[i] > 1429 & vrijeme_beg_bolje[i] < 1530){
    vrijeme_beg_bolje[i] <- 15
  }
  
  if(vrijeme_beg_bolje[i] > 1529 & vrijeme_beg_bolje[i] < 1630){
    vrijeme_beg_bolje[i] <- 16
  }
  
  if(vrijeme_beg_bolje[i] > 1629 & vrijeme_beg_bolje[i] < 1730){
    vrijeme_beg_bolje[i] <- 17
  }
  
  if(vrijeme_beg_bolje[i] > 1729 & vrijeme_beg_bolje[i] < 1830){
    vrijeme_beg_bolje[i] <- 18
  }
  
  if(vrijeme_beg_bolje[i] > 1829 & vrijeme_beg_bolje[i] < 1930){
    vrijeme_beg_bolje[i] <- 19
  }
  
  if(vrijeme_beg_bolje[i] > 1929 & vrijeme_beg_bolje[i] < 2030){
    vrijeme_beg_bolje[i] <- 20
  }
  
  if(vrijeme_beg_bolje[i] > 2029 & vrijeme_beg_bolje[i] < 2130){
    vrijeme_beg_bolje[i] <- 21
  }
  
  if(vrijeme_beg_bolje[i] > 2129 & vrijeme_beg_bolje[i] < 2230){
    vrijeme_beg_bolje[i] <- 22
  }
  
  if(vrijeme_beg_bolje[i] > 2229 & vrijeme_beg_bolje[i] < 2330){
    vrijeme_beg_bolje[i] <- 23
  }
}

podaci13 <- read.csv("2013.csv")

new_podaci13 <- podaci13[podaci13[,"EVENT_TYPE"]=="Tornado",]
vrijeme_beg13 <- new_podaci13[,4]

vrijeme_beg_bolje13 <- vector("integer",1054)

br <- 0
for(i in 1:1054){
  if(vrijeme_beg13[i] != 0) br <- br+1
}

vrijeme_beg_bolje13 <- vector("integer", 1054)

j <- 1

for(i in 1:1054){
  if(vrijeme_beg13[i] != 0){
    vrijeme_beg_bolje13[j] <- vrijeme_beg13[i]
    
    j <- j+1
  }
}

hist(vrijeme_beg_bolje13)

for(i in 1:1054){
  if(vrijeme_beg_bolje13[i] > 2329 | vrijeme_beg_bolje13[i] < 29){
    vrijeme_beg_bolje13[i] <- 0
  }
  
  if(vrijeme_beg_bolje13[i] > 29 & vrijeme_beg_bolje13[i] < 130){
    vrijeme_beg_bolje13[i] <- 1
  }
  
  if(vrijeme_beg_bolje13[i] > 129 & vrijeme_beg_bolje13[i] < 230){
    vrijeme_beg_bolje13[i] <- 2
  }
  
  if(vrijeme_beg_bolje13[i] > 229 & vrijeme_beg_bolje13[i] < 330){
    vrijeme_beg_bolje13[i] <- 3
  }
  
  if(vrijeme_beg_bolje13[i] > 329 & vrijeme_beg_bolje13[i] < 430){
    vrijeme_beg_bolje14[i] <- 4
  }
  
  if(vrijeme_beg_bolje13[i] > 429 & vrijeme_beg_bolje13[i] < 530){
    vrijeme_beg_bolje13[i] <- 5
  }
  
  if(vrijeme_beg_bolje13[i] > 529 & vrijeme_beg_bolje13[i] < 630){
    vrijeme_beg_bolje13[i] <- 6
  }
  
  if(vrijeme_beg_bolje13[i] > 629 & vrijeme_beg_bolje13[i] < 730){
    vrijeme_beg_bolje13[i] <- 7
  }
  
  if(vrijeme_beg_bolje13[i] > 729 & vrijeme_beg_bolje13[i] < 830){
    vrijeme_beg_bolje13[i] <- 8
  }
  
  if(vrijeme_beg_bolje13[i] > 829 & vrijeme_beg_bolje13[i] < 930){
    vrijeme_beg_bolje13[i] <- 9
  }
  
  if(vrijeme_beg_bolje13[i] > 929 & vrijeme_beg_bolje13[i] < 1030){
    vrijeme_beg_bolje13[i] <- 10
  }
  
  if(vrijeme_beg_bolje13[i] > 1029 & vrijeme_beg_bolje13[i] < 1130){
    vrijeme_beg_bolje13[i] <- 11
  }
  
  if(vrijeme_beg_bolje13[i] > 1129 & vrijeme_beg_bolje13[i] < 1230){
    vrijeme_beg_bolje13[i] <- 12
  }
  
  if(vrijeme_beg_bolje13[i] > 1229 & vrijeme_beg_bolje13[i] < 1330){
    vrijeme_beg_bolje13[i] <- 13
  }
  
  if(vrijeme_beg_bolje13[i] > 1329 & vrijeme_beg_bolje13[i] < 1430){
    vrijeme_beg_bolje13[i] <- 14
  }
  
  if(vrijeme_beg_bolje13[i] > 1429 & vrijeme_beg_bolje13[i] < 1530){
    vrijeme_beg_bolje13[i] <- 15
  }
  
  if(vrijeme_beg_bolje13[i] > 1529 & vrijeme_beg_bolje13[i] < 1630){
    vrijeme_beg_bolje13[i] <- 16
  }
  
  if(vrijeme_beg_bolje13[i] > 1629 & vrijeme_beg_bolje13[i] < 1730){
    vrijeme_beg_bolje13[i] <- 17
  }
  
  if(vrijeme_beg_bolje13[i] > 1729 & vrijeme_beg_bolje13[i] < 1830){
    vrijeme_beg_bolje13[i] <- 18
  }
  
  if(vrijeme_beg_bolje13[i] > 1829 & vrijeme_beg_bolje13[i] < 1930){
    vrijeme_beg_bolje13[i] <- 19
  }
  
  if(vrijeme_beg_bolje13[i] > 1929 & vrijeme_beg_bolje13[i] < 2030){
    vrijeme_beg_bolje13[i] <- 20
  }
  
  if(vrijeme_beg_bolje13[i] > 2029 & vrijeme_beg_bolje13[i] < 2130){
    vrijeme_beg_bolje13[i] <- 21
  }
  
  if(vrijeme_beg_bolje13[i] > 2129 & vrijeme_beg_bolje13[i] < 2230){
    vrijeme_beg_bolje13[i] <- 22
  }
  
  if(vrijeme_beg_bolje13[i] > 2229 & vrijeme_beg_bolje13[i] < 2330){
    vrijeme_beg_bolje13[i] <- 23
  }
}

podaci14 <- read.csv("2014.csv")

new_podaci14 <- podaci14[podaci14[,"EVENT_TYPE"]=="Tornado",]
vrijeme_beg14 <- new_podaci14[,3]

vrijeme_beg_bolje14 <- vector("integer",1009)

br <- 0
for(i in 1:1009){
  if(vrijeme_beg14[i] != 0) br <- br+1
}

vrijeme_beg_bolje14 <- vector("integer", 1008)

j <- 1

for(i in 1:1008){
  if(vrijeme_beg14[i] != 0){
    vrijeme_beg_bolje14[j] <- vrijeme_beg14[i]
    
    j <- j+1
  }
}

hist(vrijeme_beg_bolje14)

for(i in 1:1008){
  if(vrijeme_beg_bolje14[i] > 2329 | vrijeme_beg_bolje14[i] < 29){
    vrijeme_beg_bolje14[i] <- 0
  }
  
  if(vrijeme_beg_bolje14[i] > 29 & vrijeme_beg_bolje14[i] < 130){
    vrijeme_beg_bolje14[i] <- 1
  }
  
  if(vrijeme_beg_bolje14[i] > 129 & vrijeme_beg_bolje14[i] < 230){
    vrijeme_beg_bolje14[i] <- 2
  }
  
  if(vrijeme_beg_bolje14[i] > 229 & vrijeme_beg_bolje14[i] < 330){
    vrijeme_beg_bolje14[i] <- 3
  }
  
  if(vrijeme_beg_bolje14[i] > 329 & vrijeme_beg_bolje14[i] < 430){
    vrijeme_beg_bolje14[i] <- 4
  }
  
  if(vrijeme_beg_bolje14[i] > 429 & vrijeme_beg_bolje14[i] < 530){
    vrijeme_beg_bolje14[i] <- 5
  }
  
  if(vrijeme_beg_bolje14[i] > 529 & vrijeme_beg_bolje14[i] < 630){
    vrijeme_beg_bolje14[i] <- 6
  }
  
  if(vrijeme_beg_bolje14[i] > 629 & vrijeme_beg_bolje14[i] < 730){
    vrijeme_beg_bolje14[i] <- 7
  }
  
  if(vrijeme_beg_bolje14[i] > 729 & vrijeme_beg_bolje14[i] < 830){
    vrijeme_beg_bolje14[i] <- 8
  }
  
  if(vrijeme_beg_bolje14[i] > 829 & vrijeme_beg_bolje14[i] < 930){
    vrijeme_beg_bolje14[i] <- 9
  }
  
  if(vrijeme_beg_bolje14[i] > 929 & vrijeme_beg_bolje14[i] < 1030){
    vrijeme_beg_bolje14[i] <- 10
  }
  
  if(vrijeme_beg_bolje14[i] > 1029 & vrijeme_beg_bolje14[i] < 1130){
    vrijeme_beg_bolje14[i] <- 11
  }
  
  if(vrijeme_beg_bolje14[i] > 1129 & vrijeme_beg_bolje14[i] < 1230){
    vrijeme_beg_bolje14[i] <- 12
  }
  
  if(vrijeme_beg_bolje14[i] > 1229 & vrijeme_beg_bolje14[i] < 1330){
    vrijeme_beg_bolje14[i] <- 13
  }
  
  if(vrijeme_beg_bolje14[i] > 1329 & vrijeme_beg_bolje14[i] < 1430){
    vrijeme_beg_bolje14[i] <- 14
  }
  
  if(vrijeme_beg_bolje14[i] > 1429 & vrijeme_beg_bolje14[i] < 1530){
    vrijeme_beg_bolje14[i] <- 15
  }
  
  if(vrijeme_beg_bolje14[i] > 1529 & vrijeme_beg_bolje14[i] < 1630){
    vrijeme_beg_bolje14[i] <- 16
  }
  
  if(vrijeme_beg_bolje14[i] > 1629 & vrijeme_beg_bolje14[i] < 1730){
    vrijeme_beg_bolje14[i] <- 17
  }
  
  if(vrijeme_beg_bolje14[i] > 1729 & vrijeme_beg_bolje14[i] < 1830){
    vrijeme_beg_bolje14[i] <- 18
  }
  
  if(vrijeme_beg_bolje14[i] > 1829 & vrijeme_beg_bolje14[i] < 1930){
    vrijeme_beg_bolje14[i] <- 19
  }
  
  if(vrijeme_beg_bolje14[i] > 1929 & vrijeme_beg_bolje14[i] < 2030){
    vrijeme_beg_bolje14[i] <- 20
  }
  
  if(vrijeme_beg_bolje14[i] > 2029 & vrijeme_beg_bolje14[i] < 2130){
    vrijeme_beg_bolje14[i] <- 21
  }
  
  if(vrijeme_beg_bolje14[i] > 2129 & vrijeme_beg_bolje14[i] < 2230){
    vrijeme_beg_bolje14[i] <- 22
  }
  
  if(vrijeme_beg_bolje14[i] > 2229 & vrijeme_beg_bolje14[i] < 2330){
    vrijeme_beg_bolje14[i] <- 23
  }
}

vrijeme <- c(vrijeme_beg_bolje,vrijeme_beg_bolje13,vrijeme_beg_bolje14)
write(vrijeme, file = "vrijeme_tornada_2012_2013_2014.csv",ncolumns=1)

x <- rep.int(2012, 1033)
y <- rep.int(2013, 1054)
z <- rep.int(2014, 1008)

godina <- c(x,y,z)

kruskal.test(vrijeme~godina)
