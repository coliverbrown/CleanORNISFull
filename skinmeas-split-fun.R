## splitting skinmeas column into usable data function

skin.meas.split <- function(x) {
  # need to make sure the variable names are consistent throughout the data frame
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
  return(c(WCH, TL, TS, BL, BLH, BLW, SKL))
  
  
  
}
