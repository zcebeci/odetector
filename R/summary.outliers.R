summary.outliers <- function (object, ...){
  objo <- object
  if(missing(objo))
    stop("Missing input argument 'outliers' object")
  if(!inherits(objo, "outliers")) 
    stop("The input argument 'outliers' must be an instance of the class 'outliers'")
  X <- objo$X
  cat("Summary of Outliers from ", deparse(objo$call), "\n")
  cat(rep("-",80))
  cat("\n\nSummary of outliers computed with Approach 1\n")
  if(length(objo$outliers1) > 0)
    print(summary(X[objo$outliers1,]))
  else
    cat("No outliers detected")
  cat("\nSummary of outliers computed with Approach 2\n")
  if(length(objo$outliers2) > 0)
    print(summary(X[objo$outliers2,]))
  else
    cat("No outliers detected")
  cat("\nSummary of outliers computed with Approach 3\n")
  if(length(objo$outliers3) > 0)
    print(summary(X[objo$outliers3,]))
  else
    cat("No outliers detected")
  cat("\nSummary of outliers in small clusters\n")
  if(length(objo$outliers4) > 0)
    print(summary(X[objo$outliers4,]))
  else
    cat("No outliers detected\n")
  cat("\nAvailable components: \n")
  print(names(objo))
  invisible(objo)
}

