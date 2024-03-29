% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summaryStatistics.R
\name{sumStats}
\alias{sumStats}
\title{Summary statistics of a phylogeny}
\usage{
sumStats(phylo)
}
\arguments{
\item{phylo}{phylogeny (ape format)}
}
\value{
list
}
\description{
Compute 84 summary statistics on the phylogeny.
We split the summary statistics in 3 categories :
\itemize{
\item branch length, 25 summary statistics
\item topological, 8 summary statistics
\item LTT, 51 summary statistics
These summary statistics are listed below.
}
}
\details{
Branch length summary statistics:
\tabular{ll}{
Variable \tab Description\cr
height \tab phylogeny height\cr
mean.all \tab mean of all branch lengths\cr
median.all \tab median of all branch lengths\cr
var.all \tab variance of all branch lengths\cr
mean.ext \tab mean of external branch lengths\cr
median.ext \tab median of external branch lengths\cr
var.ext \tab variance of external branch lengths\cr
mean.int1 \tab mean of internal branch lengths of part 1\cr
median.int1 \tab median of internal branch lengths of part 1\cr
var.int1 \tab variance of internal branch lengths of part 1\cr
mean.int2 \tab mean of internal branch lengths of part 2\cr
median.int2 \tab median of internal branch lengths of part 2\cr
var.int2 \tab variance of internal branch lengths of part 2\cr
mean.int3 \tab mean of internal branch lengths of part 3\cr
median.int3 \tab median of internal branch lengths of part 3\cr
var.int3 \tab variance of internal branch lengths of part 3\cr
mean.intext1 \tab mean.int1 / mean.ext\cr
median.int1 \tab median.int1 / median.ext\cr
var.int1 \tab var.int1 / var.ext\cr
mean.intext2 \tab mean.int2 / mean.ext\cr
median.int2 \tab median.int2 / median.ext\cr
var.int2 \tab var.int2 / var.ext\cr
mean.intext3 \tab mean.int3 / mean.ext\cr
median.int3 \tab median.int3 / median.ext\cr
var.int3 \tab var.int3 / var.ext
}

Topological summary statistics:
\tabular{ll}{
Variable \tab Description\cr
colless \tab absolute difference in left and right tips, summed over int.
nodes\cr
sackin \tab depth summed over tips\cr
widthdepth \tab ratio of maximal width over maximal depth\cr
deltaw \tab maximal consecutive width difference\cr
maxladder \tab maximal ladder size\cr
inladder \tab proportion of nodes in ladder\cr
imbalance \tab proportion of imbalanced nodes (i.e. colless !=0)\cr
stair \tab ratio of tips on each side summed over internal nodes}

LTT summary statistics:
\tabular{ll}{
Variable \tab Description\cr
LTT_slope\code{i} \tab slope of LTT i-th part in semilog scale (i in [1,10])\cr
LTT_t\code{i} \tab i-th time coordinate of binned LTT (i in [1,20])\cr
LTT_N\code{i} \tab i-th lineage coordinate of binned LTT (i in [1,20])\cr
n_tips \tab phylogeny number of tips
}
}
\examples{
phylo <- createPhyloCRBD(100, list(lambda = 1, mu = 0.1))
sumStats(phylo) # compute its summary statistics
}
