######### Function to separate "SKINMEAS" column from ORNIS full flat file
######### Author: Caitlyn Oliver Brown
######### Last Update: 7 Dec 2022


skin.meas.split <- function(x) {
  
  if (length(x) >= 1) {  # need to make sure the variable names are consistent throughout the data frame
  x <- gsub("WCH:", "WCH:", ignore.case = TRUE, as.character(x))
  x <- gsub("TL:", "TL:", ignore.case = TRUE, as.character(x))
  x <- gsub("TS:", "TS:", ignore.case = TRUE, as.character(x))
  x <- gsub("BL:", "BL:", ignore.case = TRUE, as.character(x))
  x <- gsub("BLH:", "BLH:", ignore.case = TRUE, as.character(x))
  x <- gsub("BLW:", "BLW:", ignore.case = TRUE, as.character(x))
  x <- gsub("SKL:", "SKL:", ignore.case = TRUE, as.character(x))
  
  x <- gsub("WCH ", "WCH:", ignore.case = TRUE, as.character(x))
  x <- gsub("TL ", "TL:", ignore.case = TRUE, as.character(x))
  x <- gsub("TS ", "TS:", ignore.case = TRUE, as.character(x))
  x <- gsub("BL ", "BL:", ignore.case = TRUE, as.character(x))
  x <- gsub("BLH ", "BLH:", ignore.case = TRUE, as.character(x))
  x <- gsub("BLW ", "BLW:", ignore.case = TRUE, as.character(x))
  x <- gsub("SKL ", "SKL:", ignore.case = TRUE, as.character(x))
  
  # now we can grab the data of interest 
  WCH <- as.numeric(gsub("WCH:", "", grep("WCH:", unlist(strsplit(x, ";")), value = T)))
  TL <- as.numeric(gsub("TL:", "", grep("TL:", unlist(strsplit(x, ";")), value = T)))
  TS <- as.numeric(gsub("TS:", "", grep("TS:", unlist(strsplit(x, ";")), value = T)))
  BL <- as.numeric(gsub("BL:", "", grep("BL:", unlist(strsplit(x, ";")), value = T)))
  BLH <- as.numeric(gsub("BLH:", "", grep("BLH:", unlist(strsplit(x, ";")), value = T)))
  BLW <- as.numeric(gsub("BLW:", "", grep("BLW:", unlist(strsplit(x, ";")), value = T)))
  SKL <- as.numeric(gsub("SKL:", "", grep("SKL:", unlist(strsplit(x, ";")), value = T)))
  if(length(WCH)==0){WCH <- NA}
  if(length(TL)==0){TL <- NA}
  if(length(TS)==0){TS <- NA}
  if(length(BL)==0){BL <- NA}
  if(length(BLH)==0){BLH <- NA}
  if(length(BLW)==0){BLW <- NA}
  if(length(SKL)==0){SKL <- NA}
  
   output <- c(WCH, TL, TS, BL, BLH, BLW, SKL)
  }  
  else { output <- c(rep(NA,7)) }

   return(output)
  
}
