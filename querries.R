
qry <- "show tables"      ### make sure it is made
qry <- "select * from dim_stn_tz_mapping_new"   ### get the field names
qry <- "select * from clickstream"


rs = dbSendQuery(mydb, qry) 
look <- dbFetch(rs, n = 1000)
look
dbClearResult(rs)
