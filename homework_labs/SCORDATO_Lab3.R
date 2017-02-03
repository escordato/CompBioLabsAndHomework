#lab step #3: define variables for number of bags of chips & number of guests

numb_chips<-5
numb_guests<-8

#lab step #5: average number of bags of chips per guest
avg_chips_guest<-0.4

## calculation of how many leftover bags of chips
numb_chips-((numb_guests+1)*avg_chips_guest)

# everyone's rankings of star wars movies. Lenny is clearly insane.
self<-c(7,6,5,1,2,3,4)
penny<-c(5,7,6,3,1,2,4)
jenny<-c(4,3,2,7,6,5,1)
lenny<-c(1,7,3,4,6,5,2)
stewie<-c(6,7,5,4,3,1,2)

## penny and lenny's rankings for ep4
pennyIV<-penny[4]
lennyIV<-lenny[4]
str(pennyIV)

### concatenate individual rnakings
rankings<-cbind(self, penny, jenny, lenny, stewie)
df<-as.data.frame(rankings)

## df is a dataframe, which is a list object comprised of vectors
#(each column is a vector with the first row as the name of the vector). 
##rankings is a matrix where the first row of labels are just characters
typeof(rankings)
typeof(df)
str(df)
str(rankings)

#create row names
ep.names<-c("I","II","III","IV", "V", "VI", "VII")
row.names(rankings)<-ep.names
row.names(df)<-ep.names

#check row names worked
rankings
df

## indexing
rankings[3,]
df[,4]
df[5,1]
df[4:6,]
df[c(2,5,7),]
df[c(4,6),c(2:3,5)]

#disagree! can be done with a single command and no new object (albeit tediously)
df$lenny<-c(1,6,3,4,7,5,2)
df

#index by name rather than number
rankings["III","penny"]
df["III","lenny"]

# change lenny's preferences
df["II","lenny"]<-7
df["V","lenny"]<-6

#change lenny's preferences back
df$lenny[2]<-6
df$lenny[5]<-7
