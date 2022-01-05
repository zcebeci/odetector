remove.outliers <- function(x, ot=1, sc=FALSE){
  objo <- x
  if(class(objo)!="outliers")
    stop("The input argument 'outliers' should be an object of 'outliers' class")
  X <- objo$X
  n <- nrow(X)
  if(missing(ot))
    ot <- 1
  if(ot==1)
    outliers <- objo$outliers1
  else if(ot==2)
    outliers <- objo$outliers2
  else if(ot==3)
    outliers <- objo$outliers3
  if(sc)
    outliers <- c(outliers, objo$outliers4)
  return(Xr=X[-outliers,])
}

