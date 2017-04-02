remove.packages("QICD")
detach("package:QICD", unload=TRUE)
library(QICD)
install.packages("F:\\Documents\\New Bo Peng Folder\\Google Drive(umn)\\Github\\QICD_1.1.1.tar.gz",repos=NULL,type="source")
library(QICD)

x=matrix(rnorm(10000),50)
n=dim(x)[1]
p=dim(x)[2]
intercept=1
y=x[,1]+x[,7]+x[,9]+0.1*rnorm(n)
beta1=rep(0,p+intercept)
tau=0.5
a=2.7
res=QICD(y,x,beta1,tau,lambda=10,a,"scad",intercept=intercept)