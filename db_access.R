# Phil Weissman
# Walker Advertising data read
# Nov 17, 2020

### Mapping files used by WalkerDBProcess
# walker_area_ca_maping
# weight_wag_mapping
# dim_stn_tz_mapping


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



#source("/Users/phil/source/utils.R")
#source("/Users/phil/source/daypart2.R")
#source("r/walker_utils.R")

if(Sys.getenv("HOME") == "/Users/phil") {
  bucket_hist = "rbase-docker/Reports_Hist/"
  bucket_cur = "rbase-docker/Reports_Current/"
  host <- "127.0.0.1"
} else {
  bucket_hist = "walker-s3-bucket/Reports_Hist"
  bucket_cur = "walker-s3-bucket/Reports_Current"
  host <- "walkerrdsmed-cluster.cluster-ro-ciucgnzjkyct.us-east-1.rds.amazonaws.com"
}



mydb <<- dbConnect(RMySQL::MySQL(), user='admin', password='Admin1234', dbname='walker', host=host)




rs = dbSendQuery(mydb, qry) 
look <- dbFetch(rs, n = -1)
look
dbClearResult(rs)


