\name{odetector-package}
\alias{odetector-package}
\docType{package}
\title{Outlier Detection Using Possibilistic Fuzzy Cluster Analysis}

\description{
An object is an "outlier" if it remarkably deviates from the other objects in a data set. Outlier detection is the process to identify outliers by using the methods that are based on distance measures, clustering and spatial methods (Ben-Gal, 2005). This package introduces a clustering-based outlier detection method. This novel method detects the outliers with three approaches processing typicality degrees that are obtained using the Unsupervised Possibilistic Fuzzy C-Means clustering algorithm (Wu et al, 2010).
}

\details{
Although it is mostly called as outlier detection or anomaly detection, there are many synonyms of outlier detection depending on the different application domains. For example, the other terms are fraud detection, discordants detection, exception mining, aberration detection, surprise detection, peculiarity detection or contaminant detection etc.  

Outlier detection methods can be classified in many ways. In a common taxonomy, the methods are categorized as  clustering-based methods, distance based methods and density based methods. Clustering-based methods divides data object into clusters and seeks the objects which are not typical members of any of the clusters. The method is applied in this package uses a possibilistic fuzzy clustering algorithm to calculate the typicality degrees of the objects in a data set. The studied method is based on three approaches for deciding the atypicality. An object is atypical if its average possibilistic memberhip degrees is less than a pre-defined threshold possibility degree. The objects are labeled as the outliers if they satify the above rule.
}

\references{
Ben-Gal, I. (2005). Outlier detection, in \emph{Maimon, O. & Rockach, L. (Eds.) Data Mining and
 Knowledge Discovery Handbook: A Complete Guide for Practitioners and Researchers}, Kluwer Academic Publishers, <ISBN 0-387-24435-2>. 

Wu, X., Wu, B., Sun, J. & Fu, H. (2010). Unsupervised possibilistic fuzzy clustering. \emph{J. of Information & Computational Sci.}, 7 (5): 1075-1080.
}

\author{Zeynel Cebeci, Figen Yildiz}

\seealso{
 \code{\link[ppclust]{upfc}},
 \code{\link{detect.outliers}},
 \code{\link{plot.outliers}},
 \code{\link{pairs.outliers}},
 \code{\link{print.outliers}},
 \code{\link{remove.outliers}},
 \code{\link{summary.outliers}}
}

\concept{outlier detection}
\concept{anomaly detection}
\concept{cluster analysis}
\concept{unsupervised learning}

\keyword{cluster}
\keyword{multivariate}