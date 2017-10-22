library(dplyr)
library(ellipse)
library(PerformanceAnalytics)
library(car)
library(leaps)

USC <- read.table("data/UScrime.dat",header=TRUE)

USC %>% head
USC %>% summary

stripchart(USC,method="jitter")
p <- ncol(USC)
for (i in 1:p){
  stripchart(USC[,i],method="jitter")
}

cor(USC)
plotcorr(cor(USC))

fit0 <- lm(y~expp0,data=USC)
fit1 <- lm(y~expp1,data=USC)
fit01 <- lm(y~expp0+expp1,data=USC)
vif(fit01)
anova(fi0,fit01)

USC_red <- USC[,-which(names(USC)==c("expp0","expp1"))]

x <- USC_red[,-1]
y <- USC_red$y
leap <-  leaps(x=x, y=y, method=c("r2"), nbest=1)
leap

# leaps is a wrapper for regsubsets 
# regsub <- regsubsets(x=x, y=y, nbest=1, nvmax=p)

leap$which[1,]
plot(1:p,leap$r2)

m <- list()
aic.v <- c()
bic.v <- c()
for (i in 1:nrow(leap$which)){
  m[[i]] <- lm(y~.,data=cbind(y,x[leap$which[i,]]))
  aic.v[i] <- AIC(m[[i]])
  bic.v[i] <- BIC(m[[i]])
}
m[[which.min(aic.v)]]
m[[which.min(bic.v)]]

USC_red2 <- USC_red[,-which(names(USC_red)==c("unempl1","poverty"))]

# etc etc


fitB <- stepAIC(fitA, direction="both")
summary(fitB)

fitC <- lm(y ~., data=USC_red2)
summary(fitC)
fitD <- stepAIC(fitC, direction="both")
summary(fitD)

fitE <- lm(y ~1, data=USC_red2)
fitF <- stepAIC(fitE, scope=formula(fitC), direction="both")
summary(fitF)
