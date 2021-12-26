setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project")

library(tidyverse)
library(stringr)
library(readxl)
library(splitstackshape)
library(sentimentr)
library(writexl)
library(dplyr)
library(tidytext)
library(wordcloud)
library(RColorBrewer)
library(wordcloud2)
library(tm)
library(ggplot2)

# dataset
years <- sort(c(1960:2020), decreasing = TRUE)
   titles <- c("Joe_Biden.xlsx", rep("Donald_Trump.xlsx", 4), rep("Barack_Obama.xlsx", 4), rep("Barack_Obama.xlsx", 4), rep("George_Bush.xlsx", 4), 
             rep("George_Bush.xlsx", 4), rep("Bill_Clinton.xlsx", 4), rep("Bill_Clinton.xlsx", 4), rep("George_Bush.xlsx", 4), 
             rep("Ronald_Reagan.xlsx", 4), rep("Ronald_Reagan.xlsx", 4), rep("Jimmy_Carter.xlsx", 4), rep("Richard_Nixon.xlsx", 4), 
             rep("Richard_Nixon.xlsx", 4), rep("Lyndon_Johnson.xlsx", 4), rep("John_Kennedy.xlsx", 4))
   

   Presidents <-  c("Joe Biden", rep("Donald J. Trump", 4), rep("Barack H. Obama", 4), rep("Barack H. Obama", 4), rep("George W. Bush", 4), 
             rep("George W. Bush", 4), rep("Bill Clinton", 4), rep("Bill Clinton", 4), rep("George H. W. Bush", 4), 
             rep("Ronald Reagan", 4), rep("Ronald Reagan", 4), rep("Jimmy Carter", 4), rep("Richard Nixon", 4), 
             rep("Richard Nixon", 4), rep("Lyndon B. Johnson", 4), rep("John Kennedy", 4))

   
   Months <- data.frame("Month" = c("January|Jan.", "February|Feb.", "March", "April", "May", "June", "July|Jul.", "August|Aug.", "September|Sept.", "October|Oct.", "November|Nov.", "December|Dec."))
   Real_Months <- data.frame("Month" = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))

   # call on the documents
   
   
   
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              ANNUAL    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
   
#------------------------------------------------------------------------------------------------- loop to generate sentiment
   
# first year
#i <- 1
#    President <- read_excel(paste(years[i], titles[i], sep="_"))
          # select unique titles
#                                President <- President[!duplicated(President[,'Title']),]
                                  
                                
                     
                                                    
                                                    
                                  # Sentiment Analysis
                                    # example on the use of this package: https://towardsdatascience.com/sentiment-analysis-in-r-good-vs-not-good-handling-negations-2404ec9ff2ae
                                    
 #                                     President$Positive_Sent <- sentiment_by(President$Title)$ave_sentiment
#                                      
#                                              # group by Year 
#                                                  Sent <- mean(President$Positive_Sent)
#                                                  artcs <- nrow(President) 
#                                                  
#                                               
#                                                  # add to dataframe 
#                                                      Sentiments <- data.frame(President = paste(Presidents[i]), Year = years[i], Sentiment = Sent, Articles = artcs)
#
#                                              # ------------------------------------------------
#                                                  # Word counts
#                                                      President_df <- data_frame(Text = President$Title) # tibble aka neater data frame
#                                                        President_words <-  President_df %>% 
#                                                                          unnest_tokens(output = word, input = Text) 
#                                                          President_words <- President_words %>% anti_join(stop_words)
#                                                          President_wordcounts <- President_words %>% count(word, sort = TRUE)
#                                                            President_words <- data.frame(President = paste(Presidents[i]),  Year = years[i], head(President_wordcounts, n=10)) # Remove stop words 
#                                                                Word_Analysis <- President_words


                                                            
                                                            
# all other years
#   for (i in (2:length(years))) {
#   President <- read_excel(paste(years[i], titles[i], sep="_"))
          # select unique titles
#                                President <- President[!duplicated(President[,'Title']),]
                                  # analyze
                                    # example on the use of this package: https://towardsdatascience.com/sentiment-analysis-in-r-good-vs-not-good-handling-negations-2404ec9ff2ae
                                    
#                                      President$Positive_Sent <- sentiment_by(President$Title)$ave_sentiment
                                      
                                              # group by Year 
#                                                  Sent <- mean(President$Positive_Sent)
#                                                  artcs <- nrow(President) 
                                                  
                                                  
                                               
                                                  # add to dataframe 
#                                                      Sentiments <- rbind(Sentiments, data.frame(President = paste(Presidents[i]), Year = years[i], Sentiment = Sent, Articles = artcs))
                                                              

                                                # ------------------------------------------------
                                                      # Word counts
#                                                          President_df <- data_frame(Text = President$Title) # tibble aka neater data frame
#                                                            President_words <-  President_df %>% 
#                                                                              unnest_tokens(output = word, input = Text) 
#                                                              President_words <- President_words %>% anti_join(stop_words)
#                                                              President_wordcounts <- President_words %>% count(word, sort = TRUE)
#                                                                President_words <- data.frame(President = paste(Presidents[i]),  Year = years[i], head(President_wordcounts, n=10)) # Remove stop words 
#                                                                 Word_Analysis <- rbind(Word_Analysis, President_words)
#                                                      }
#   
#   
#----------------------------------------------------------------- save the dataset                                               
                                                        
# Sentiments$Rank <- rank(Sentiments$Sentiment)        
                                                      
                                                      
# export to Excel                         
#write_xlsx(Sentiments,"NYT Sentiment Analysis by Year.xlsx")                                                       
#write_xlsx(Word_Analysis,"NYT Word Freq by Year.xlsx")                                                      
   









# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              MONTHLY    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
 
   
   
#------------------------------------------------------------------------------------------------- loop to generate sentiment by title and generate cleaned dataframe

for (i in (1:length(years))) {
   setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project")
    President <- read_excel(paste(years[i], titles[i], sep="_"))
        #   select unique titles
                                President <- President[!duplicated(President[,'Title']),]
                                   #  get the months  
                                      
                                     #    for the first month
                                          j <- 1
                                            A <- President %>%
                                              filter(str_detect(Subtitle, paste(Months$Month[j], sep=" ")))
                                                A$Month <- paste(Real_Months$Month[j], sep=" ")
                                                   merge 
                                                    B <- merge(President,A[,c("...1", "Month")],by="...1")
                                                      Final <- B
                                                      #  for all other months
                                                          for (j in (2:nrow(Months))) {
                                                            A <- President %>%
                                                            filter(str_detect(Subtitle, paste(Months$Month[j], sep=" ")))
                                                            A$Month <- paste(Real_Months$Month[j], sep=" ")
                                                             merge
                                                            B <- merge(President,A[,c("...1", "Month")],by="...1")
                                                             rbind
                                                            Final <- rbind(Final, B)
                                                          }
                                
                                                                  #   analyze by month
                                                                   #    example on the use of this package: https://towardsdatascience.com/sentiment-analysis-in-r-good-vs-not-good-handling-negations-2404ec9ff2ae
                                                                      
                                                                    # first month
                                                                      z <- 1
                                                                        A <- Final[Final$Month == Real_Months$Month[z], c(3,4)] 
                                                                            if(nrow(A)==0) {A = data.frame("Title" = "0", "Month" = "0")}
                                                                               A$Positive_Sent <- sentiment_by(A$Title)$ave_sentiment
                                                                            
                                                                                          # Final
                                                                                            Sentiments <- A
                                                                      # all other months
                                                                          for (z in (2:length(unique(Final$Month)))){
                                                                            A <- Final[Final$Month == Real_Months$Month[z], c(3,4)]
                                                                              if(nrow(A)==0) {A = data.frame("Title" = "0", "Month" = "0")}
                                                                                A$Positive_Sent <- sentiment_by(A$Title)$ave_sentiment
                                                                                    Final
                                                                                      Sentiments <- rbind(Sentiments, A)
                                                                          }
                                                                             Sentiments$Rank <- rank(Sentiments$Positive_Sent)            
                                                                               Sentiments$President <- Presidents[i]
                                                                                  Sentiments$Year <- years[i]
                                                                                    
                                                                                    setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project/Presidents By Month")                    
                                                                                              
                                                                                        #   export to Excel                         
                                                                                            write_xlsx(Sentiments,paste(Presidents[i], years[i], "NYT Monthly.xlsx", sep = "_"))            
                                                                                             
 
 }

 
 
#------------------------------------------------------------------------------------------------- loop to generate average sentiment by month and generate cleaned dataframe
setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project/Presidents By Month") 
i <- 1
 Sentiments <- read_excel(paste(Presidents[i], years[i], "NYT Monthly.xlsx", sep = "_"))
        Sentiments_1 <- Sentiments %>% 
           group_by(Month) %>% 
           summarise(sent = mean(Positive_Sent)) 
              Articles <- Sentiments %>% count(Month)
         # merge
          Sentiments_1 <- merge(Sentiments_1, Articles, by = c("Month"))  
          
          
            Sentiments_1$President <- unique(Sentiments$President)
              Sentiments_1$Year <- unique(Sentiments$Year)
                # final dataset
                  Final_df <- Sentiments_1


for (i in (2:length(years))) {
    Sentiments <- read_excel(paste(Presidents[i], years[i], "NYT Monthly.xlsx", sep = "_"))
        Sentiments_1 <- Sentiments %>% 
           group_by(Month) %>% 
           summarise(sent = mean(Positive_Sent))
         # merge
          Sentiments_1 <- merge(Sentiments_1, Articles, by = c("Month"))  
            Sentiments_1$President <- unique(Sentiments$President)
              Sentiments_1$Year <- unique(Sentiments$Year)
                 # final dataset
                  Final_df <- rbind(Final_df, Sentiments_1)
}
         
#   export to Excel                         
    write_xlsx(Final_df, "Monthly_Sentiment.xlsx")        
    
                                                                                                   
                                                                                                                                                    