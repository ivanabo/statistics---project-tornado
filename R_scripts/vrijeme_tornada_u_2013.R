podaci <- read.csv("2013.csv")

new_podaci <- podaci[podaci[,"EVENT_TYPE"]=="Tornado",]
vrijeme_beg <- new_podaci[,4]

vrijeme_beg_bolje <- vector("integer",60054)

br <- 0
for(i in 1:1054){
  if(vrijeme_beg[i] != 0) br <- br+1
}

vrijeme_beg_bolje <- vector("integer", 1054)

j <- 1

for(i in 1:1054){
  if(vrijeme_beg[i] != 0){
    vrijeme_beg_bolje[j] <- vrijeme_beg[i]
    
    j <- j+1
  }
}

hist(vrijeme_beg_bolje)

for(i in 1:1054){
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

hist(vrijeme_beg_bolje)

frekv <- data.frame(table(vrijeme_beg_bolje))

frekv <- data.frame(frekv,frekv[2]/sum(frekv[2]))

names(frekv)[1]<-"rezultati"
names(frekv)[2]<-"frekvencije"
names(frekv)[3]<-"relativne frekvencije"

frekv

hist(vrijeme_beg_bolje,probability=TRUE,breaks=c(-0.5,0.5,1.5,2.5,3.5,4.5,5.5,6.5,7.5,8.5,9.5,10.5,11.5,12.5,13.5,14.5,15.5,16.5,17.5,18.5,19.5,20.5,21.5,22.5,23.5),xlab="vrijeme u danu",ylab="relativne frekvencije",main="Histogram",col="cyan")

quantile(vrijeme_beg_bolje,type=6)

boxplot(vrijeme_beg_bolje)

broj <- 0
for(i in 1:1054){
  if(vrijeme_beg_bolje[i] > 9) broj <- broj+1
}

dnevni <- vector("integer",922)
k <- 1
for(i in 1:1054){
  if(vrijeme_beg_bolje[i] > 9){
    dnevni[k] <- vrijeme_beg_bolje[i]
    k <- k+1
  }
}

hist(dnevni)
