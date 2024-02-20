mydata = read.csv("2014.csv",stringsAsFactors=FALSE);
new_dat <- mydata[mydata[,"EVENT_TYPE"]=="Tornado",]



#write.csv(new_dat, file="1996.csv")

vars_to_keep<-c("BEGIN_YEARMONTH", "BEGIN_DAY","BEGIN_TIME", "STATE", "YEAR", "EVENT_TYPE", "DAMAGE_PROPERTY", "DAMAGE_CROPS", "TOR_F_SCALE")

filtered_data<-new_dat[vars_to_keep]
for(i in 1:nrow(filtered_data)){ filtered_data[i,1] =  filtered_data[i,1] %% 100}


for(i in 1:nrow(filtered_data)){
    
    if(filtered_data[i,8] == "") {filtered_data[i,8] <- "0";}
    if(filtered_data[i,9] == "") {filtered_data[i,9] <- "0";}

    filtered_data[i,8] <- gsub("^[.]","0.", filtered_data[i,8] ); #dodaj naprijed 0 svima koji su zapisani kao .6468848
    filtered_data[i,9] <- gsub("^[.]","0.", filtered_data[i,9] );
    
    filtered_data[i,8] <- gsub("^([0-9]+)([M])$", "\\1000000", filtered_data[i,8], perl=T); #svi koji su oblika "1M" dodaj sest nula umjesto "M"
    filtered_data[i,9] <- gsub("^([0-9]+)([M])$", "\\1000000", filtered_data[i,9], perl=T);
    
    filtered_data[i,8] <- gsub("^([0-9]+)([.])([0-9]{1})([M])", "\\1\\300000", filtered_data[i,8], perl=T); #svima koji su oblika "1321.1M" izbaci tocku i dodaj pet nula umjesto "M"
    filtered_data[i,9] <- gsub("^([0-9]+)([.])([0-9]{1})([M])", "\\1\\300000", filtered_data[i,9], perl=T); 
    
    filtered_data[i,8] <- gsub("^([0-9]+)([.])([0-9]{2})([M])", "\\1\\30000", filtered_data[i,8], perl=T);#svima koji su oblika "1321.15M" izbaci tocku i dodaj cetiri nule umjesto "M"
    filtered_data[i,9] <- gsub("^([0-9]+)([.])([0-9]{2})([M])", "\\1\\30000", filtered_data[i,9], perl=T)
    
    filtered_data[i,8] <- gsub("^([0-9]+)([K])$", "\\1000", filtered_data[i,8], perl=T);
    filtered_data[i,9] <- gsub("^([0-9]+)([K])$", "\\1000", filtered_data[i,9], perl=T);
    
    filtered_data[i,8] <- gsub("^([0-9]+)([.])([0-9]{1})([K])", "\\1\\300", filtered_data[i,8], perl=T);
    filtered_data[i,9] <- gsub("^([0-9]+)([.])([0-9]{1})([K])", "\\1\\300", filtered_data[i,9], perl=T)
    
    filtered_data[i,8] <- gsub("^([0-9]+)([.])([0-9]{2})([K])", "\\1\\30", filtered_data[i,8], perl=T);
    filtered_data[i,9] <- gsub("^([0-9]+)([.])([0-9]{2})([K])", "\\1\\30", filtered_data[i,9], perl=T);
    
    filtered_data[i,8] <- gsub("^([0]{1})([1-9]+)", "\\2", filtered_data[i,8], perl=T); #makni sve vodece nule koje nastanu supstitucijama kada je oblik "0.5M ili K"
    filtered_data[i,9] <- gsub("^([0]{1})([1-9]+)", "\\2", filtered_data[i,9], perl=T);
    
    filtered_data[i,8] <- gsub("^[0]+$", "0", filtered_data[i,8], perl=T); #kada ima visestrukih nula koje nastanu sa "0K" ostavi samo jednu nulu
    filtered_data[i,9] <- gsub("^[0]+$", "0", filtered_data[i,9], perl=T);
    
    
    filtered_data[i,8] <- as.numeric(as.character(filtered_data[i,8])); #pretvara stringove u brojeve
    filtered_data[i,9] <- as.numeric(as.character(filtered_data[i,9]));
 
  }

beg_time_to_keep<-c("BEGIN_TIME")
beg_time<-filtered_data[beg_time_to_keep]
vrijeme<-vector("integer",1009)
broj<-0
for(i in 1:1009){
  if(vrijeme[i]>929 & vrijeme[i]<2331){
    broj=broj+1;}
}
novo_vr<-vector("integer",902)
for(i in 1:1009){
  vrijeme[i]<-beg_time[i,1]
}
br<-1
for(i in 1:1009){
  if(vrijeme[i]>929 & vrijeme[i]<2331){
    novo_vr[br]<-vrijeme[i];
    br=br+1;}
}
po_vremenima<-vector("integer", 14)
for(i in 1:14){
  po_vremenima[i]<-0
}
for(i in 1:902)
{
  if(vrijeme[i]>929 & vrijeme[i]<1030){
    po_vremenima[1]<-po_vremenima[1]+1
  }
  if(vrijeme[i]>1029 & vrijeme[i]<1130){
    po_vremenima[2]<-po_vremenima[2]+1
  }
  if(vrijeme[i]>1129 & vrijeme[i]<1230){
    po_vremenima[3]<-po_vremenima[3]+1
  }
  if(vrijeme[i]>1229 & vrijeme[i]<1330){
    po_vremenima[4]<-po_vremenima[4]+1
  }
  if(vrijeme[i]>1329 & vrijeme[i]<1430){
    po_vremenima[5]<-po_vremenima[5]+1
  }
  if(vrijeme[i]>1429 & vrijeme[i]<1530){
    po_vremenima[6]<-po_vremenima[6]+1
  }
  if(vrijeme[i]>1529 & vrijeme[i]<1630){
    po_vremenima[7]<-po_vremenima[7]+1
  }
  if(vrijeme[i]>1629 & vrijeme[i]<1730){
    po_vremenima[8]<-po_vremenima[8]+1
  }
  if(vrijeme[i]>1729 & vrijeme[i]<1830){
    po_vremenima[9]<-po_vremenima[9]+1
  }
  if(vrijeme[i]>1829 & vrijeme[i]<1930){
    po_vremenima[10]<-po_vremenima[10]+1
  }
  if(vrijeme[i]>1929 & vrijeme[i]<2030){
    po_vremenima[11]<-po_vremenima[11]+1
  }
  if(vrijeme[i]>2029 & vrijeme[i]<2130){
    po_vremenima[12]<-po_vremenima[12]+1
  }
  if(vrijeme[i]>2129 & vrijeme[i]<2230){
    po_vremenima[13]<-po_vremenima[13]+1
  }
  if(vrijeme[i]>2229 & vrijeme[i]<2330){
    po_vremenima[14]<-po_vremenima[14]+1
  }
}

y<-1:1009
hist(novo_vr)


write.csv(filtered_data, file="2014filtr.csv")

x<-1:12
plot(x,br_torF1_mj)

lillie.test(novo_vr)
