# Phil Weissman
# Walker Advertising data read
# Nov 17, 2020



rm(list=ls()) 
stringsAsFactors = FALSE

library("readxl")
library(dplyr)
library(RMySQL)
library(lubridate)
library(tscount)
library(aws.s3)
library(tidyr)
#library(PWMutils)


host <- "127.0.0.1"


mydb <<- dbConnect(RMySQL::MySQL(), user='admin', password='Admin1234', dbname='walker', host=host)




rs = dbSendQuery(mydb, qry) 
look <- dbFetch(rs, n = -1)
look
dbClearResult(rs)


