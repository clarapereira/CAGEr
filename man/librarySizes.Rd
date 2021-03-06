% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetMethods.R
\docType{methods}
\name{librarySizes}
\alias{librarySizes}
\alias{librarySizes,CAGEset-method}
\alias{librarySizes,CAGEexp-method}
\title{Extracting library sizes from CAGEr objects}
\usage{
librarySizes(object)

\S4method{librarySizes}{CAGEset}(object)

\S4method{librarySizes}{CAGEexp}(object)
}
\arguments{
\item{object}{A CAGEset or CAGEexp object.}
}
\value{
Returns an integer vector of total number of CAGE tags (library size) for all CAGE
datasets in the CAGEr object.
}
\description{
Extracts the library sizes (total number of CAGE tags) for all CAGE datasets
from \code{\link{CAGEset}} and \code{\link{CAGEexp}} objects.
}
\details{
Library sizes are calculated when loading data with the \code{getCTSS}
function and stored in the \code{librarySizes} slot of \code{CAGEset} objects,
or in the \code{librarySizes} column of the \code{colData} ov \code{CAGEexp} objects.
}
\examples{
librarySizes(exampleCAGEset)

}
\seealso{
\code{\link{getCTSS}}

Other CAGEr accessor methods: \code{\link{CTSSclusteringMethod}},
  \code{\link{CTSScoordinates}},
  \code{\link{CTSScumulativesTagClusters}},
  \code{\link{CTSSnormalizedTpm}},
  \code{\link{CTSStagCountTable}},
  \code{\link{CTSStagCount}}, \code{\link{GeneExpDESeq2}},
  \code{\link{GeneExpSE}},
  \code{\link{consensusClustersGR}},
  \code{\link{genomeName}}, \code{\link{inputFilesType}},
  \code{\link{inputFiles}}, \code{\link{sampleLabels}},
  \code{\link{seqNameTotalsSE}}, \code{\link{tagClusters}}
}
\author{
Vanja Haberle
}
\concept{CAGEr accessor methods}
