% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExportMethods.R
\docType{methods}
\name{plotInterquantileWidth}
\alias{plotInterquantileWidth}
\alias{plotInterquantileWidth,CAGEr-method}
\title{Plot cluster widths}
\usage{
plotInterquantileWidth(object, clusters = c("tagClusters",
  "consensusClusters"), tpmThreshold = 5, qLow = 0.1, qUp = 0.9,
  xlim = c(0, 150), ...)

\S4method{plotInterquantileWidth}{CAGEr}(object,
  clusters = c("tagClusters", "consensusClusters"), tpmThreshold = 5,
  qLow = 0.1, qUp = 0.9, xlim = c(0, 150), ...)
}
\arguments{
\item{object}{A \code{\link{CAGEr}} object}

\item{clusters}{Which clusters to be used.  (\code{"tagClusters"} for \emph{tag clusters}
or \code{"consensusClusters"} for \emph{consensus clusters}.}

\item{tpmThreshold}{Exclude clusters with normalized signal \code{< tpmThreshold}.}

\item{qLow, qUp}{Position of which "lower" (resp. "upper") quantile should be used as 5'
(resp. 3') boundary.  See Details.}

\item{xlim}{The x axis limits of the plot.}

\item{...}{Additional arguments passed to \code{plot()} function, such as \code{ylim},
\emph{etc.}.}
}
\description{
Plots histograms of the interquantile width of tag clusters or
consensus clusters in each CAGE dataset.
}
\details{
Interquantile width is a width (in base-pairs) of the central part of the genomic
region (bounded by the positions of specified \code{qLow} and \code{qUp} quantiles) that
contains \code{>= (qUp - qLow) * 100\%} of the CAGE signal.  Positions of specified quantiles
within each cluster have to be calculated beforehand by calling \code{\link{quantilePositions}}
function.  Interquantile width is a more robust measure of the promoter width than the total
span of the region, because it takes into account the magnitude of the expression in the
region.
}
\examples{
plotInterquantileWidth( object = exampleCAGEset, clusters = "tagClusters"
                      , tpmThreshold = 50, qLow = 0.1, qUp = 0.9)

plotInterquantileWidth( exampleCAGEexp, clusters = "consensusClusters"
                      , tpmThreshold = 50, qLow = 0.1, qUp = 0.9)

}
\seealso{
Other CAGEr plot functions: \code{\link{hanabiPlot}},
  \code{\link{plotAnnot}}, \code{\link{plotCorrelation}},
  \code{\link{plotExpressionProfiles}},
  \code{\link{plotReverseCumulatives}}

Other CAGEr clusters functions: \code{\link{CTSSclusteringMethod}},
  \code{\link{CTSScumulativesTagClusters}},
  \code{\link{CustomConsensusClusters}},
  \code{\link{aggregateTagClusters}},
  \code{\link{clusterCTSS}},
  \code{\link{consensusClustersDESeq2}},
  \code{\link{consensusClustersGR}},
  \code{\link{cumulativeCTSSdistribution}},
  \code{\link{quantilePositions}},
  \code{\link{tagClusters}}
}
\author{
Vanja Haberle
}
\concept{CAGEr clusters functions}
\concept{CAGEr plot functions}
