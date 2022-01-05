pairs.outliers <- function(x, ...){
  objo <- x
  if(class(objo)!="outliers")
    stop("The input argument 'x' should be an object of the 'outliers' class")
  X <- objo$X
  n <- nrow(X)
  par(mfrow=c(2,2), ask=TRUE)
  if(length(objo$outliers1)){
    pc <- rep("o", n)
    pc[objo$outliers1] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers1] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 1")
  }
  if(length(objo$outliers2)){
    pc <- rep("o", n)
    pc[objo$outliers2] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers2] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 2")
  }
  if(length(objo$outliers3)){
    pc <- rep("o", n)
    pc[objo$outliers3] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers3] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 3")
  }
  if(length(objo$outliers4)){
    pc <- rep("o", n)
    pc[objo$outliers4] <- "*"
    pcol <- rep("dodgerblue", n)
    pcol[objo$outliers4] <- "red"
    pairs(X, pch=pc, col=pcol, cex=1, main="Approach 4")
  }
}
