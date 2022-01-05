\name{summary.outliers}
\alias{summary.outliers}
\title{Summary of outliers}
\usage{
\method{summary}{outliers}(object, \dots)
}
\arguments{
  \item{object}{an object of \code{outliers} class having the outliers to be summarized. See \code{\link{detect.outliers}} for the details.}
  \item{\dots}{additional arguments for S3 method \code{summary}.}
}
\description{
Summarizes the detected outliers for a data set.
}
\value{Print out of the descriptive statistics for the outliers in an object of \code{outliers} class.}
\author{Zeynel Cebeci, Figen Yildiz}
\seealso{
 \code{\link{detect.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{plot.outliers}},
 \code{\link{print.outliers}},
 \code{\link{remove.outliers}}
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
 
# Summarize the outliers
summary(outs)
}
\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}
\keyword{cluster}
\keyword{multivariate}
