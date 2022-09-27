# odetector
Outlier Detection Using Cluster Analysis

## Install the package 'odetector'
In order to install the package `odetector` from the GitHub repository you should first install the `devtools` package from CRAN into your local system. Then you can install the package  `odetector` using `install_github` of `devtools` package as shown with the R code chunks below:

```{r}
if(!require(devtools)) {install.packages('devtools'); require(devtools)}
install_github("zcebeci/odetector")
```
If you would like to have a compiled version of the vignettes of the package try to install the package `odetector` using `install_github` with `build_vignettes` argument set to TRUE as shown below:

```{r}
if(!require(devtools)) {install.packages('devtools'); require(devtools)}
 devtools::install_github("zcebeci/odetector", build_vignettes=TRUE)
```
If you have not already installed `rmarkdown` and `prettydoc` in your local system, before running the above install commands firstly install these packages as following:

 ```{r}
install.packages('prettydoc')
```

## Load the package into R working space
After you installed the package `odetector`, run the following command in order to load it to R working space.

```{r}
library(odetector)
```

## Help for the package
To get help about the use of functions included in the package `odetector`, run `help` in R as seen in the following code chunk.

```{r}
help(package="odetector")
```
For reaching the detailed vignette about the usage of package with examples, run the following command and then click *HTML* link on the accessed page in your web browser. Read the vignette and apply the examples.

```{r}
browseVignettes("odetector")
```

## Cite the package
To cite the package please use one of the following items fits to your references list:


Cebeci Z, Cebeci C, Tahtali Y, Bayyurt L. 2022. Two novel outlier detection approaches based on unsupervised possibilistic and fuzzy clustering. PeerJ Computer Science 8:e1060 https://doi.org/10.7717/peerj-cs.1060

or in BibTeX format as follows:
```
@misc{zcebeciodetector,
  author = {Cebeci, Z. and Cebeci, C. and Tahtali, Y. and Bayyurt, L.},
  title = {Two novel outlier detection approaches based on unsupervised possibilistic and fuzzy clustering},
  year = {2022},
  journal = {PeerJ Computer Science},
  volume={8:e1060},
  howpublished = {\url{https://doi.org/10.7717/peerj-cs.1060}},
}
 ```
