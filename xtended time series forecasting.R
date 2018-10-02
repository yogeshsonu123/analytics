# xts  - create object and export data


library(xts)

#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")


10


itemizeDates <- function(startDate="09-01-2018", endDate="09-30-2018", 
                         format="%m-%d-%y") {
  out <- seq(as.Date(startDate, format=format), 
             as.Date(endDate, format=format), by="days")  
  format(out, format)
                         }
#line to create a vector of 30 dates------------------
v1 <- as.Date(as.Date("2018-09-01"):as.Date("2018-09-30"), origin="1970-01-01")
v1
(stprice=matrix(rnorm(90,mean=100,sd=10),ncol =3, byrow=F))
(ts_xts_sep = xts(x=stprice,order.by=v1))
colnames(ts_xts_sep)=c('SBI','ICICI','HDFC')
ts_xts_sep
plot(ts_xts_sep)
class(ts_xts_sep)
