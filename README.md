# Presidential-Race

The purpose of this project is to identify the variables that impact the probability of a Democrat candidate winning the US elections. The methodology consists of a Logit regression applied to multiple variables.




# Data Sources



In order to conduct this analysis, we will perform a logit regression, since our dependent variable is a binary dummy variable. Our dataset is a time series comprising the last 60 years (1960-2020). Our variables are listed below:


### Variables 

Dependent variable | Source
---------------------------------------------------------------------------------------------------------------|-------------
President's Political Party (dummy variable starting the year they were elected, Democrat = 1  Republican = 0) | Statista









Independent variables                                                                    | Source
 -------------------------------------------------------------------------------------------|---------------------------------------------------
 Inflation Rate (Annual CPI Percentage Change from Year Before, Seasonally adjusted)         | Federal Reserve
 Unemployment Rate (Seasonally Adjusted)                                                     | Bureau of Labor Statistics
 Real Gross Domestic Product, Billions of Chained 2012 Dollars, Quarterly, Seasonally Adjusted Annual Rate                                             | Federal Reserve Economic Data, Federal Reserve Bank of St. Louis
 Per Capita Personal Income (Current Dollars)                                 | Regional Economic Analysis Project
 Consumer Price Index for All Urban Consumers (CPI-U) 12-Month Percent Change (1982-84=100)                 | Bureau of Labor Statistics
 Percentage of Christian Households                                                                        | Gallup.com web scraped
 Percentage of White People, Not Hispanic (thousands)                                            | US Census Bureau
 Educational Attainment (measured as thousands of people with a Bachelor's degree or more)   | US Census Bureau
 Income Share of the Top 5% Income Recipients                                                | US Census Bureau
 Sentiment                                                                                   | Own web scraped data from The New York Times
 Articles                                                                                    | Own web scraped data from The New York Times



##### Web Scrape
The web scrape was done in Python, using the name of each president that was in power for each year as the keyword to extract all relevant articles. All articles included in our analysis, correspond to articles published by the New York Times that have the name of the president in power tagged. The function extracts each of those articles' titles, dates, and other details into an Excel with the name of the president. In total, this function generated 6 Excel files. From there, the file "Clean data.R" was created. This R script imports each of these Excel documents, cleans the data, and then exports the cleaned data as the files "NYT Sentiment Analysis by Year.xlsx", "Month_df.xlsx",  and "NYT Word Freq by Year.xlsx".


# Limitations 
The historical Census data the Percentage of White People, Not Hispanic, and Income Share of the Top 5% Income Recipients was not available for the entire period of analysis: 8 and 7 observations are missing respectively. However, it is still useful to consider the increasing trend in these statistics in the United States over the last forty years. 


# Data Manipulations
Since all of the missing values (NA's) were in the first few years of the series, it was decided to substitute those NA's with the minimum value of the column. This proved to be the most wise approach, since in the earlier years all historical data was at its lowest.



# Data Cleaning
### Web Scraped Data
```{r, message = TRUE, echo= TRUE, warning = FALSE}
# source("Clean data.R")
# setwd("C:/Users/scyth/OneDrive - Northeastern University/Math/Project/Presidents By Month/Data")
# source("Make dataframe.R")
```




# Empirical Results

We use a logit regressions with our data. The first regression only considers economic variables, while the second includes economic and demographic variables that may  explain election outcomes.


# Results Interpretation

Out of all the models, Model (3) has the highest accuracy (and scores higher in all other goodness of fit statistics) - so it provides the best fit. We will evaluate the results of Model (3), since it has the best predictive power. All the variables are statistically significant at the 0.01 significance level, but the number of total articles published seem to not be statistically significant at any significance level, after controlling for all key factors. 

Regarding this, we can see that for every one unit change in "The top five percent income share", the log odds of a democrat candidate (versus non-democrat) of being elected, increases by 1.020. Additionally, for every one percenta point change in the "Unemployment Rate", the log odds of a democrat candidate (versus non-democrat) of being elected, increases by 0.489. More over, for every one percentage change in the number of people over 25 years of age with a bacherlors or more, the log odds of a democrat candidate (versus non-democrat) of being elected, increases by 26.731. Education is the variable with the highest economic impact over the probability of a Democrat candidate winning the elections. Similarly, the variable with lowest impact is the Consumer Price Index, where for any additional unit increase it reflects a 0.192 decrease in the log odds of a democrat candidate (versus non-democrat) of being elected.


Articles did not exhibit statistically significant relationships at the 0.1 significance level. This may be explained by the lack of varaince on the sample. 


# Bibliography

Brenan, M. (2021, November 20). Americans' Trust in Media Dips to second lowest on record. Gallup.com. Retrieved December 3, 2021, from https://news.gallup.com/poll/355526/americans-trust-media-dips-second-lowest-record.aspx
Campbell, J. E., & Mann, T. E. (1996, July 28). Forecasting the presidential election: What can we learn from the models? Brookings. Retrieved December 2, 2021, from https://www.brookings.edu/articles/forecasting-the-presidential-election-what-can-we-learn-from-the-models/. 
Erikson, R. S. (1989). Economic Conditions and The Presidential Vote. The American Political Science Review, 83(2), 567â573. https://doi.org/10.2307/1962406
Fair, R. C. (2018, November 14). Presidential and Congressional Vote-Share Equations: November 2018 Update. Retrieved December 10, 2021. 
Gallup. (2021, August 13). In-depth Topics: Religion. Gallup.com. Retrieved December 3, 2021, from https://news.gallup.com/poll/1690/religion.aspx 
Housman, P. (2020, October 28). Does Allan Lichtman stand by his "13 keys" prediction of a Joe Biden win? American University. Retrieved December 2, 2021, from https://www.american.edu/cas/news/13-keys-election-prediction.cfm 
Keys to the White House. PollyVote. (n.d.). Retrieved December 3, 2021, from https://pollyvote.com/en/components/models/mixed/keys-to-the-white-house/ 

 

