data.frame.x<-data.frame(names=c("Gretha","Robert","John","Heather"),
                         age=c(30,18,25,70),
                         nickname=c("Quicksilver","The Man","Nifty","Starlight"))

data.frame.y<-data.frame("Person_name"=c("William","Nancy","Charlotte","Henry"),
                         age=c(15,75,32,51),
                         "pet_dog"=c("King","Whity","Captain Vom","Doggie"))
data.frame.x
data.frame.y
data.frame1<-merge(data.frame.x,data.frame.y,
                   by.y =c("names","age"),
                   by.x =c("Person_name","age"),all=TRUE)
data.frame1

str(iris)
setosa.data<-subset(iris,Species=="setosa" & Sepal.Length < median(Sepal.Length),
                    select = -Species)
summary(setosa.data)





my.text<-"Over the last decade, bluetongue virus have spread northwards from the mediterranean area. Initially this was ascribed to climate changes, but it has since been realized that a major contributing factor has been new transmitting vectors, culicoides obsoletus and culicoides pulicaris, which have the ability to aquire and transmit the disease. Recently, schmallenberg virus has emerged in northern europe, transmitted by biting midges as well."
my.text
my.lowercase<-c("bluetongue","culicoides","europe","mediterranean",
                "northern","schmallenberg")

my.uppercase<-c("Bluetongue","Culicoides","Europe","Mediterranean",
                "Northern","Schmallenberg")
my.new.text<-my.text
for(i in 1:length(my.lowercase)){
  my.new.text<-gsub(my.lowercase[i],my.uppercase[i],my.new.text)
}
my.new.text




Set.seed(885)
my.posixct<-as.POSIXct(sample((60*60*24*365*50):(60*60*24*365*55),20), 
                       origin = as.Date("1960-01-01"))

my.posixct
my.posixct2<-my.posixct+9010
my.posixct2
head(data.frame(my.posixct,my.posixct2))



dat1<- data.frame(name=c("Cat","Vic","Osc"),age=c(9,7,4))
dat2<- data.frame(name=c("Vic","Jon","Cat"),gender=c("male","male","female"))
merge(dat1,dat2)
merge(dat1,dat2,all=TRUE)




set.seed(449)
your.dates<-as.Date(sample(18000:20000,20), origin = "1960-01-01")
summary(your.dates)
your.dates
your.days<-c(julian(your.dates,origin=as.Date("1960-01-01")))
your.days
summary(your.days)




set.seed(119)
my.days<-sample(18000:20000,20)

my.days.structure<-month.day.year(my.days,origin=c(1,1,1960))

my.days.structure
my.dates<-as.Date(my.days, origin = "1960-01-01") 
my.date.info<-data.frame(Weekday=weekdays(my.dates),my.days.structure) 
my.date.info




str(presidents)
tapply(presidents,cycle(presidents),mean,na.rm=TRUE)


summary(airquality$Wind)
my.cut<- cut(airquality$Wind,2*(1:11)-1)
tapply(airquality$Solar.R,my.cut,mean,na.rm=TRUE)


summary(swiss)
my.cut2<-cut(swiss$Agriculture,breaks = 10*(0:10))
my.cut3<-cut(swiss$Catholic,breaks = 10*(0:10))
tapply(swiss$Fertility,list(my.cut2,my.cut3),mean)




colMeans(airquality)
sapply(airquality,mean)


summary(airquality)
with(airquality, table(Month, Temp < 65)) 
sapply(airquality, airquality$Temp < 65)

table(LowTemp = airquality$Temp < 65, airquality$Month) 
prop.table(with(airquality, table(Month, Temp > 80)),1)
airquality$Temp
prop.table(with(airquality, table(Month, Temp > 80)),2) 
prop.table(with(airquality, table(Temp > 80, Month)),1) 
prop.table(with(airquality, table(Temp > 80, Month)),2)
lapply(airquality, mean)
as.list(sapply(airquality, mean)) 