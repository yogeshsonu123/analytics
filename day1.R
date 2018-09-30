#dataframe----
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'),size=30,replace=T,prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('bba','mba'),size=30,replace=T,prob=c(.5,.5)))
rollno;sname;gender
marks;marks2;course
#create df----------------

df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)
str(df1)
head(df1)
head(df1, n=3)
