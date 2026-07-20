install.packages("data.table")
install.packages("here")
install.packages("readxl")

library(data.table)
library(here)
library(readxl)

H <- fread(here("Comb_Pear_70K.csv"),header=TRUE)

H[H==0]<-'AA'
H[H==1]<-'AB'
H[H==2]<-'BB'
H[H==-1]<-'--'
H2<-H


H<-H2[,-c(1:27)]
H<-t(H)
T<-as.data.frame(c('AA','AB','BB','--'))
colnames(T)<-c('Var1')
x <- as.data.frame(matrix(nrow = dim(H)[2], ncol = dim(H)[2]))

for (i in seq(from = 1, to = 1813)){
  AA <- subset(H, H[, i] == c("AA"))
  BB <- subset(H, H[, i] == c("BB"))
  
  if (dim(AA)[1] == 0 || dim(BB)[1] == 0){
    x[i,] <- c(NA)
  } else{ 
    for (j in seq(from = 1, to = 1813)){
      f <- as.data.frame(table(AA[, j]))
      g <- as.data.frame(table(BB[, j]))
      f<-merge(T,f,all.x=TRUE,by=c('Var1'))
      g<-merge(T,g,all.x=TRUE,by=c('Var1'))
      g[is.na(g)]<-c(0)
      f[is.na(f)]<-c(0)
      if (dim(f)[1]==c(1)||dim(g)[1]==c(1)){
        x[i, j] <- c(NA)
        
      } else if(g[which(g$Var1 == c('--')), 2] == sum(g$Freq,na.rm=TRUE) || f[which(f$Var1 == c('--')), 2] == sum(f$Freq,na.rm=TRUE)){
        x[i, j] <- c(NA)
      } else{
        e1 <-
          f[which(f$Var1 == c('BB')), 2] / (f[which(f$Var1 == c('AB')), 2] + f[which(f$Var1 ==
                                                                                       c('AA')), 2] + f[which(f$Var1 == c('BB')), 2])
        e2 <-
          g[which(g$Var1 == c('AA')), 2] / (g[which(g$Var1 == c('AB')), 2] + g[which(g$Var1 ==
                                                                                       c('AA')), 2] + g[which(g$Var1 == c('BB')), 2])
        
        e <- e1 + e2
        x[i, j] <- e
      }
    }
  }
  print(i)
}

write.csv(x,'output.csv')
