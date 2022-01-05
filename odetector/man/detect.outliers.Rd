\name{detect.outliers}
\alias{detect.outliers}
\title{Detect outliers}
\usage{
detect.outliers (x, k, tt=0.05, rst=0.2, tcs="m1")
}
\arguments{
  \item{x}{an object of class \sQuote{ppclust} containing the clustering results from a possibilistic and fuzzy cluster algorithm in the package \pkg{ppclust}. Alternatively, a numeric data frame or matrix containing data set can be speficied to generate the object of class \sQuote{ppclust} internally.}
  \item{k}{an integer specifying the number of cluster. If the argument \code{x} specified as the data frame or matrix \code{k} should be also specified. Its default value is 2.}
  \item{tt}{a number to specify the threshold typicality value to be used to detect the outliers. If the typicality value of an object is less than this value the object is threated as an outlier. The default value is 0.05. For searching more outliers it should be increased.}
  \item{rst}{a number specifying the threshold typicality value to be used with the Approach 2 in order to detect the outliers. The objects which the rows sums of their typicality degrees are less than this value are evaluated as the outliers. The default value is 0.2. For more outliers the value of this argument should be increased.}
  \item{tcs}{a string specifying the method to determine the small clusters for finding collective outliers. The default value is \option{m1} and the alternative is \option{m2}. See the \emph{Details} for the details.}
}
\description{
The \code{detect.outliers} function finds the outliers by using four different approaches based on the typicality degrees of the data objects in a data set.  
}
\details{
The function \code{detect.outliers} computes the outliers by using four different approaches. The first approach (Approach 1) assumes that a data object is an outlier if its average typicality is less than the \code{tt}, a user-defined threshold typicality degree. If the sum of typicality degrees of an object to all clusters is less than the \code{rst}, a user-defined threshold value for typicalities row sums. In the third approach (Approach 3) an object is labeled as an outlier, if its typicality to all clusters is less than the \code{tt}. The last approach (Approach 4) is that all members of a small cluster are the collective outliers and can be labeled as the outliers. 

With Approach 4, the members of a small clusters are considered as the collective outliers. In the function \code{detect.outliers}, two different methods are available to compute the threshold small cluster size (tcs). In the following equations, the first one has been proposed by Santos-Pereira & Pires(2002) and works for the small data sets. The second is a novel method is proposed by the authors of this document and works better than the previous one for the large data sets.
\deqn{tcs_1 = 2 p + 2}{tcs_1 = 2 p + 2} 
\deqn{tcs_2 = \frac{log_2 n}{k} \; log_2 p}{tcs_2=\frac{log_2 n}{k} \; log_2 p}
where:
\code{p} is the number of features,
\code{k} is the number of clusters,
\code{n} is the number of objects.
}

\value{an object of class \sQuote{outliers} containing the following items:
 \item{X}{a numeric data matrix containing the processed data set.}
 \item{outliers1}{a numeric vector containing the labels (row indexes) of outliers found by the Approach 1.}
 \item{outliers2}{a numeric vector containing the labels (row indexes) of outliers found by the Approach 2.}
 \item{outliers3}{a numeric vector containing the labels (row indexes) of outliers found by the Approach 3.}
 \item{outliers4}{a numeric vector containing the labels (row indexes) objects in the small clusters to be treated as outliers.}
}
\references{
Santos-Pereira, C.M. & Pires, A.M. (2002), Detection of outliers in multivariate data: A method based on clustering and robust estimators. In \emph{Haerdle W., Roenz B. (eds) Compstat. Physica}, Heidelberg. pp. 291-296.

Wu, X., Wu, B., Sun, J. & Fu, H. (2010). Unsupervised possibilistic fuzzy clustering. \emph{ J. of Information & Computational Sci.}, 7 (5): 1075-1080.
}

\author{Zeynel Cebeci, Figen Yildiz}

\seealso{
 \code{\link{plot.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{print.outliers}},
 \code{\link{remove.outliers}},
 \code{\link{summary.outliers}},
 \code{\link[ppclust]{upfc}}
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
 
# Summarize and plot the outliers
summary(outs)
plot(outs)

# Detect the outliers with a higher possibility 
outs <- detect.outliers(res.upfc, tt=0.1)
 
# Summarize and plot the outliers
summary(outs)
plot(outs)
}

\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}

\keyword{cluster}
\keyword{multivariate}