mydata = read.csv("2014.csv",stringsAsFactors=FALSE);
new_dat <- mydata[mydata[,"EVENT_TYPE"]=="Tornado",]

#write.csv(new_dat, file="1996.csv")

vars_to_keep<-c("BEGIN_YEARMONTH", "STATE", "YEAR", "EVENT_TYPE", "TOR_F_SCALE")

filtered_data<-new_dat[vars_to_keep]
for(i in 1:nrow(filtered_data)){ filtered_data[i,1] =  filtered_data[i,1] %% 100}

number_by_states<-vector("integer",51)
#drzave = c("ALABAMA", "ALASKA", "ARIZONA", "ARKANSAS", "CALIFORNIA", "COLORADO", "CONNECTICUT", "DELAWARE", "DC", "FLORIDA", "GEORGIA", "HAWAII")
  
for(i in 1:nrow(filtered_data)){
    
    if(filtered_data[i,2] == "ALABAMA") {number_by_states[1] <- number_by_states[1] + 1;}
    if(filtered_data[i,2] == "ALASKA") {number_by_states[2] <- number_by_states[2] + 1;}
    if(filtered_data[i,2] == "ARIZONA") {number_by_states[3] <- number_by_states[3] + 1;}
    if(filtered_data[i,2] == "ARKANSAS") {number_by_states[4] <- number_by_states[4] + 1;}
    if(filtered_data[i,2] == "CALIFORNIA") {number_by_states[5] <- number_by_states[5] + 1;}
    if(filtered_data[i,2] == "COLORADO") {number_by_states[6] <- number_by_states[6] + 1;}
    if(filtered_data[i,2] == "CONNECTICUT") {number_by_states[7] <- number_by_states[7] + 1;}
    if(filtered_data[i,2] == "DELAWARE") {number_by_states[8] <- number_by_states[8] + 1;}
    if(filtered_data[i,2] == "DC") {number_by_states[9] <- number_by_states[9] + 1;}
    if(filtered_data[i,2] == "FLORIDA") {number_by_states[10] <- number_by_states[10] + 1;}
    
    if(filtered_data[i,2] == "GEORGIA") {number_by_states[11] <- number_by_states[11] + 1;}
    if(filtered_data[i,2] == "HAWAII") {number_by_states[12] <- number_by_states[12] + 1;}
    if(filtered_data[i,2] == "IDAHO") {number_by_states[13] <- number_by_states[13] + 1;}
    if(filtered_data[i,2] == "ILLINOIS") {number_by_states[14] <- number_by_states[14] + 1;}
    if(filtered_data[i,2] == "INDIANA") {number_by_states[15] <- number_by_states[15] + 1;}
    if(filtered_data[i,2] == "IOWA") {number_by_states[16] <- number_by_states[16] + 1;}
    if(filtered_data[i,2] == "KANSAS") {number_by_states[17] <- number_by_states[17] + 1;}
    if(filtered_data[i,2] == "KENTUCKY") {number_by_states[18] <- number_by_states[18] + 1;}
    if(filtered_data[i,2] == "LOUISIANA") {number_by_states[19] <- number_by_states[19] + 1;}
    if(filtered_data[i,2] == "MAINE") {number_by_states[20] <- number_by_states[20] + 1;}
    
    if(filtered_data[i,2] == "MARYLAND") {number_by_states[21] <- number_by_states[21] + 1;}
    if(filtered_data[i,2] == "MASSACHUSETTS") {number_by_states[22] <- number_by_states[22] + 1;}
    if(filtered_data[i,2] == "MICHIGAN") {number_by_states[23] <- number_by_states[23] + 1;}
    if(filtered_data[i,2] == "MINNESOTA") {number_by_states[24] <- number_by_states[24] + 1;}
    if(filtered_data[i,2] == "MISSISSIPPI") {number_by_states[25] <- number_by_states[25] + 1;}
    if(filtered_data[i,2] == "MISSOURI") {number_by_states[26] <- number_by_states[26] + 1;}
    if(filtered_data[i,2] == "MONTANA") {number_by_states[27] <- number_by_states[27] + 1;}
    if(filtered_data[i,2] == "NEBRASKA") {number_by_states[28] <- number_by_states[28] + 1;}
    if(filtered_data[i,2] == "NEVADA") {number_by_states[29] <- number_by_states[29] + 1;}
    if(filtered_data[i,2] == "NEW HAMPSHIRE") {number_by_states[30] <- number_by_states[30] + 1;}
    
    if(filtered_data[i,2] == "NEW JERSEY") {number_by_states[31] <- number_by_states[31] + 1;}
    if(filtered_data[i,2] == "NEW MEXICO") {number_by_states[32] <- number_by_states[32] + 1;}
    if(filtered_data[i,2] == "NEW YORK") {number_by_states[33] <- number_by_states[33] + 1;}
    if(filtered_data[i,2] == "NORTH CAROLINA") {number_by_states[34] <- number_by_states[34] + 1;}
    if(filtered_data[i,2] == "NORTH DAKOTA") {number_by_states[35] <- number_by_states[35] + 1;}
    if(filtered_data[i,2] == "OHIO") {number_by_states[36] <- number_by_states[36] + 1;}
    if(filtered_data[i,2] == "OKLAHOMA") {number_by_states[37] <- number_by_states[37] + 1;}
    if(filtered_data[i,2] == "OREGON") {number_by_states[38] <- number_by_states[38] + 1;}
    if(filtered_data[i,2] == "PENNSYLVANIA") {number_by_states[39] <- number_by_states[39] + 1;}
    if(filtered_data[i,2] == "RHODE ISLAND") {number_by_states[40] <- number_by_states[40] + 1;}
    
    if(filtered_data[i,2] == "SOUTH CAROLINA") {number_by_states[41] <- number_by_states[41] + 1;}
    if(filtered_data[i,2] == "SOUTH DAKOTA") {number_by_states[42] <- number_by_states[42] + 1;}
    if(filtered_data[i,2] == "TENNESSEE") {number_by_states[43] <- number_by_states[43] + 1;}
    if(filtered_data[i,2] == "TEXAS") {number_by_states[44] <- number_by_states[44] + 1;}
    if(filtered_data[i,2] == "UTAH") {number_by_states[45] <- number_by_states[45] + 1;}
    if(filtered_data[i,2] == "VERMONT") {number_by_states[46] <- number_by_states[46] + 1;}
    if(filtered_data[i,2] == "VIRGINIA") {number_by_states[47] <- number_by_states[47] + 1;}
    if(filtered_data[i,2] == "WASHINGTON") {number_by_states[48] <- number_by_states[48] + 1;}
    if(filtered_data[i,2] == "WEST VIRGINIA") {number_by_states[49] <- number_by_states[49] + 1;}
    if(filtered_data[i,2] == "WISCONSIN") {number_by_states[50] <- number_by_states[50] + 1;}
    
    if(filtered_data[i,2] == "WYOMING") {number_by_states[51] <- number_by_states[51] + 1;}
    

    
  }

#ukupno <- 0
#for(i in 1:51){
#  ukupno <- ukupno + number_by_states[i];
#}

#write(number_by_states, "broj_po_drzavama.ods", sep = "\n")

#write.csv(filtered_data, file="2001_2.csv")


