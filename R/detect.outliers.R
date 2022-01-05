detect.outliers <- function(x, k, tt=0.05, rst=0.2, tcs="m1"){
  if(missing(x))
    stop("Missing input argument 'x'")
  if(inherits(x, "ppclust")){
    if(!is.null(x$x))
      X <- as.matrix(x$x)
    else
      stop("Missing data set")
  }
  else{
    if(is.matrix(x) || is.data.frame(x))
      X <- as.matrix(x)
    else
      stop("Argument 'x' must be an instance of the 'ppclust', a numeric data frame or matrix")
    if(missing(k))
      k <- 2 
    if(!is.numeric(k))
      stop("Argument 'k' must be an integer") 
    if(k < 2 || k > nrow(X) / 2)
      stop(paste0("The argument 'k' should be an integer between 2 and ", nrow(X) / 2)) 
    x <- ppclust::upfc(X, centers=k, alginitv="kmpp", alginitu="imembrand")
  }
  if(!is.null(x$t))
    T <- as.matrix(x$t)
  else
    stop("Null typicality degrees matrix")
  tcs <- match.arg(tcs, c("m1","m2"))
  if(tt < 0 || tt > 1)
    stop("Argument 'tt', threshold typicality value cannot be less than 0 or greater than 1")
  if(rst < 0 || rst > 1)
    stop("Argument 'rst', threshold row sums of typicalities cannot be less than 0 or greater than 1")
  n <- nrow(X)
  p <- ncol(X)
  k <- x$k
  csize <- table(x$cluster)
  outliers1 <- outliers2 <- outliers3 <- outliers4 <- NULL
  outliers1 <- which((rowSums(T) / k) < tt)  
  outliers2 <- which(rowSums(T) < rst)  
  outliers3 <- which(apply(T[,], MARGIN = 1, function(x) all(X < tt))) 
  if(tcs=="m1")
    tcs <- log((n/k), 2)*log(p, 2)
  else if(tcs=="m2")
    tcs <- 2*p+2
  for(i in 1:length(csize))
    if(csize[i] <= tcs)
      outliers4 <- c(outliers4, as.integer(row.names(X[x$cluster==i,])))
  if(length(outliers1) > 0)
    names(outliers1) <- paste0("Obj.", 1:length(outliers1))
  if(length(outliers2) > 0)
    names(outliers2) <- paste0("Obj.", 1:length(outliers2))
  if(length(outliers3) > 0)
    names(outliers3) <- paste0("Obj.", 1:length(outliers3))
  if(length(outliers4) > 0)
    names(outliers4) <- paste0("Obj.", 1:length(outliers4))
  outliers <- list()
  outliers$X <- X  
  outliers$outliers1 <- outliers1  
  outliers$outliers2 <- outliers2
  outliers$outliers3 <- outliers3 
  outliers$outliers4 <- outliers4 
  outliers$call <- match.call()
  class(outliers) <- c("outliers")
  return(outliers)
}
