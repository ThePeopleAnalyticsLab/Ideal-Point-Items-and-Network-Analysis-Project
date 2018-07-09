#Visit this website: http://idecide.mskcc.org/stats/multi/irt_winbugs.php.
#Follow the instructions.
library(R2WinBUGS)
library(ltm)
set.seed(71)
ltm.gpcm <-gpcm(Science[,c(1,3,4,7)])
show(ltm.gpcm)
r <- lapply(Science[, c(1,3,4,7)], as.integer)  #factor into integer
r <- matrix(unlist(r),nrow=392)                 #in matrix format
N <- nrow(r)
J <- ncol (r)                                   #number of items
nK <- rep(4,J)                                  #response categories for each item
data <- list("r", "N", "J", "nK")
param <- c("alpha", "alpha.adj", "b", "b.adj", "mu", "sigma")
inits <- function() { list(alpha = runif(J, min=0.1, max=2.5), b = cbind(0, runif(J, min=-3, max=-1.5), runif(J, min=-1.5, max=0), runif(J, min=0, max=2)), mu = runif(1, min=-1, max=1), sigma = runif(1, min=0.1, max=2) ) }
science.bugs <- bugs(data=data, inits=inits, parameters=param, model.file= "/Users/ccasti02/Documents/Research/Personality/Dissertation/Data/R Syntax/Science.bugs", n.iter=12000, n.sims = 2500, debug=FALSE)
