update.package
install.packages("Quandl")
library(ggplot2)
library(RSQLite)
library(foreign)     

funda <- read.dta("funda.dta")
msf <- read.dta("msf.dta")
library(tseries)
data(bev)
plot(bev, xlab="Year", ylab="Wheat price index", xaxt="n")
x.pos<-c(1500, 1560, 1620, 1680, 1740, 1800, 1869)
axis(1, x.pos, x.pos)
install.packages("forecast")
install.packages("lubridate")
install.packages(c("TSstudio", "xts", "zoo"))
library(TSstudio)
search()
file_url <-
  "https://raw.githubusercontent.com/PacktPublishing/Hands-On-Time-Se
ries-Analysis-with-R/master/Chapter%201/TOTALNSA.csv"
df1 <- read.csv(file = file_url, stringsAsFactors = FALSE)
library(Quandl)
library("xts")
library("zoo")
df2 <- Quandl(code = "FRED/TOTALNSA",
              type = "raw",
              collapse = "monthly",
              order = "asc",
              end_date="2017-12-31")
class(df2)
str(df2)
data("USVSales", package = "TSstudio")
url <-
  "https://raw.githubusercontent.com/RamiKrispin/Hands-On-Time-Series-Analysi
s-with-R/master/dates_formats.csv"
dates_df <- read.csv(url, stringsAsFactors = FALSE)
library(Quandl)
NGC <-Quandl(code = "FRED/NATURALGAS",
             collapse="quarterly",
             type = "ts",
             end_date = "2020-12-31")
plot.ts(NGC,
        main = "US Quarterly Natural Gas Consumption",
        ylab = "Billion of Cubic Feet")    
head(NGC, 32)
head(cycle(NGC), 32)
head(time(NGC), 32)
head(time(NGC), 32)
frequency(NGC)
start(NGC)
end(NGC)
data(Coffee_Prices)
ts_info(Coffee_Prices)
my_ts1 <- ts(data = 1:60,
             start = c(2010, 1), 
             end = c(2020,12), 
             frequency = 12) 
ts_info(my_ts1)
my_ts1
my_ts2 <- ts(data = 1:60,
             end = c(2020,12),
             frequency = 12)
start(my_ts2)
my_ts3 <- ts(data = 1:60,
             start = 2010,
             frequency = 12)
identical(my_ts1, my_ts2, my_ts3)
data(US_indicators)
str(US_indicators)
tvs <- US_indicators[, c("Date", "Vehicle Sales")]
tvs <- US_indicators[, c("Date", "Vehicle Sales")]
url <-
  "https://github.com/PacktPublishing/Hands-On-Time-Series-Analysis-with-R/blob/master/Chapter02/dates_formats.csv"
dates_df <- read.csv(url, stringsAsFactors = FALSE)
str(dates_df)
