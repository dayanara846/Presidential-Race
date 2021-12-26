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

