\name{pairs.outliers}
\alias{pairs.outliers}
\title{Scatter plots for outliers}
\usage{
\method{pairs}{outliers}(x, \dots)
}
\arguments{
  \item{x}{an object of \code{outliers} class which having the outliers to be plotted.}
  \item{\dots}{additional arguments for S3 method \code{pairs}.}
}
\description{
Plots the scatter plots showing the outliers found in a data set.
}
\value{scatter plots showing the outliers by the variable pairs.}
\author{Zeynel Cebeci, Figen Yildiz}
\seealso{
 \code{\link{detect.outliers}},
 \code{\link{plot.outliers}},
 \code{\link{print.outliers}},
 \code{\link{remove.outliers}},
 \code{\link{summary.outliers}}
}
\examples{
# Load the dataset x3p4c and 
# use the first three columns  
data(x3p4c)
x <- x3p4c[,1:3]

# For 4 clusters, run Unsupervised Possibilistic 
# Fuzzy C-Means (UPFC) algorithm of the package ppclust 
res.upfc <- ppclust::upfc(x, centers=4)

# Detect the outliers 
outs <- detect.outliers(res.upfc)
 
# Plot the outliers by the variable pairs
pairs(outs)
}
\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}
\keyword{cluster}
\keyword{multivariate}
