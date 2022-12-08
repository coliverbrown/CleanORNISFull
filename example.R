##### Example for using skin.meas.split function


source("skinmeas-split-fun.R") ## function to clean skin measurements column
mm_full <- read.csv("melospiza-melodia-fullflat-raw.csv") ##unedited raw data

View(mm_full)

for (i in 1:dim(mm_full)[1]){
  temp <- skin.meas.split(mm_full[i,"SKINMEAS"]) 
  if(length(temp) >= 1) {
    mm_full[i,29:35] <- temp
  }
  else {
    mm_full[i,29:35]<- c(rep(NA,7))
  }
  
} 

View(mm_full)
