library(data.table)
calcofi <- fread("/Users/leed13/Desktop/Teaching/Miami_STA463_563/STA463_563_Fall_2019_Donghyung/Data/calcofi/bottle.csv", header=TRUE, sep = ",")
cofi <- calcofi[,c("Salnty","T_degC","Depthm")][1:500,]
colnames(cofi) <- c("sal","temp","depth") #Salinity, Temperature(C), Depth(m)
dim(cofi)
cofi <- na.omit(cofi)
dim(cofi)
write.table(cofi, "data/calcofi_500.csv", sep=",", quote=FALSE, row.names=FALSE)






