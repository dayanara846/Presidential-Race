setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project/Presidents By Month/Data")

library(readxl)
library(writexl)


# import data
    CPI <- read_excel("CPI.xlsx")
    Election_Outcomes_Complete <- read_excel("Election Outcomes Complete.xlsx")
    GDPC1 <- read_excel("GDPC1.xls")
    Per_Capita_Personal_Income <- read_excel("Per Capita Personal Income.xlsx")

# dates
  years <- c(1960:2020)

    i <- 1
      Year <- data.frame(c(rep(years[i], 12)))

    for (i in 2:length(years)) {
      Year <- rbind(Year, data.frame(c(rep(years[i], 12))))
    }

      colnames(Year)[1] <- "Year"
      
  months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
    Month <- rep(months, times=length(years))

# elections
  b <- Election_Outcomes_Complete[,-c(3,5,6,7,9)]

    i <- 1
      c <- data.frame(rep(b[,i], 12))
          j <- 1
          d <- t(c[j, ])
          for (j in (2:nrow(c))) {
            e <- t(c[j, ])
            d <- rbind(d,e)
          }
          colnames(d)[1] <- colnames(b)[i]
          elec_out <- d
         
    for (i in 2:length(b)) {
      c <- data.frame(rep(b[i], times=12))
        j <- 1
          d <- t(c[j, ])
          for (j in (2:nrow(c))) {
            e <- t(c[j, ])
            d <- rbind(d,e)
          }
         colnames(d)[1] <- colnames(b)[i]
         elec_out <- cbind(elec_out, d)
    }
          
# final dataframe
      my_dat <- cbind(Year, Month, elec_out[,-1])
      
### clean CPI
  a <- as.data.frame(t(CPI))
    a <- a[-c(1,14,15), -c(1:11,73)]

      i <- 1
      cpi <- data.frame(a[,1])
      colnames(cpi) <- "CPI"

        for (i in 2:length(a)) {
          A <- data.frame(a[,i])
          colnames(A) <- "CPI"
          cpi <- rbind(cpi, A)
        }
    
        ### merge
          my_dat <- cbind(my_dat, cpi)
### GDP
          
  gdp <- GDPC1[-c(1:10),2]
  
  
    i <- 1
      c <- data.frame(rep(gdp[,i], 3))
          j <- 1
          d <- t(c[j, ])
          for (j in (2:nrow(c))) {
            e <- t(c[j, ])
            d <- rbind(d,e)
          }
          colnames(d)[1] <- "GDP"
          my_gdp <- d
         
   
    ### merge
      my_dat <- cbind(my_dat, my_gdp)
  
### ppci
  ppci <- Per_Capita_Personal_Income[-c(1:7),3]
    ppci <- ppci[-c(62:70),]
    
     i <- 1
      c <- data.frame(rep(ppci[,i], 12))
          j <- 1
          d <- t(c[j, ])
          for (j in (2:nrow(c))) {
            e <- t(c[j, ])
            d <- rbind(d,e)
          }
          colnames(d)[1] <- "PPCI"
          my_ppci <- d
          
          
    ### merge
      my_dat <- cbind(my_dat, my_ppci)

### sentiment
  setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project/Presidents By Month")
      Monthly_Sentiment <- read_excel("Monthly_Sentiment.xlsx")
      
        # merge
          my_dat <- merge(my_dat, Monthly_Sentiment, by = c("Year", "Month"))  
#   export to Excel  
          setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project/Presidents By Month/Data")
              write_xlsx(my_dat, "Month_df.xlsx")        
