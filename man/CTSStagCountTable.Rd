% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetMethods.R
\docType{methods}
\name{CTSStagCountTable}
\alias{CTSStagCountTable}
\alias{CTSStagCountTable,CAGEset-method}
\alias{CTSStagCountTable,CAGEexp-method}
\alias{CTSStagCountSE,CAGEset-method}
\alias{CTSStagCountSE,CAGEexp-method}
\title{Extracting CAGE tag count for TSSs from CAGEr objects}
\usage{
CTSStagCountTable(object)

\S4method{CTSStagCountTable}{CAGEset}(object)

\S4method{CTSStagCountTable}{CAGEexp}(object)

\S4method{CTSStagCountSE}{CAGEset}(object)

\S4method{CTSStagCountSE}{CAGEexp}(object)
}
\arguments{
\item{object}{A CAGEset or CAGEexp object.}
}
\value{
Returns an expression table with the number of CAGE tags supporting each
TSS (rows) in every CAGE dataset (columns).  The table is in \code{data.frame}
format for \code{CAGEset} objects and in \code{DataFrame} format for \code{CAGEexp}
objects.  Use this function when the next consumer can handle both formats.
}
\description{
Extracts the tag count for all detected TSSs in all CAGE datasets
from \code{\link{CAGEset}} and \code{\link{CAGEexp}} objects.
}
\examples{
tagCount <- CTSStagCount(exampleCAGEset)
head(tagCount)

}
\seealso{
\code{\link{getCTSS}}

Other CAGEr accessor methods: \code{\link{CTSSclusteringMethod}},
  \code{\link{CTSScoordinates}},
  \code{\link{CTSScumulativesTagClusters}},
  \code{\link{CTSSnormalizedTpm}},
  \code{\link{CTSStagCount}}, \code{\link{GeneExpDESeq2}},
  \code{\link{GeneExpSE}},
  \code{\link{consensusClustersGR}},
  \code{\link{genomeName}}, \code{\link{inputFilesType}},
  \code{\link{inputFiles}}, \code{\link{librarySizes}},
  \code{\link{sampleLabels}},
  \code{\link{seqNameTotalsSE}}, \code{\link{tagClusters}}
}
\author{
Vanja Haberle
}
\concept{CAGEr accessor methods}
