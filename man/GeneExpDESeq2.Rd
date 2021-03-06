% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetMethods.R
\docType{methods}
\name{GeneExpDESeq2}
\alias{GeneExpDESeq2}
\alias{GeneExpDESeq2,CAGEset-method}
\alias{GeneExpDESeq2,CAGEexp-method}
\title{Export gene expression data for DESeq2 analysis}
\usage{
GeneExpDESeq2(object, design)

\S4method{GeneExpDESeq2}{CAGEset}(object, design)

\S4method{GeneExpDESeq2}{CAGEexp}(object, design)
}
\arguments{
\item{object}{A \code{\link{CAGEexp}} object.}

\item{design}{A formula for the DESeq2 analysis.}
}
\description{
Creates a \code{DESeqDataSet} using the gene expression
data in the experiment slot \code{geneExpMatrix} and the sample metadata
of the \code{\link{CAGEexp}} object.  The formula must be built using factors
already present in the sample metadata.
}
\examples{
exampleCAGEexp$group <- factor(c("a", "a", "b", "b", "a"))
GeneExpDESeq2(exampleCAGEexp, ~group)

}
\seealso{
\code{DESeqDataSet} in the \code{DESeq2} package.

Other CAGEr gene expression analysis functions: \code{\link{CTSStoGenes}},
  \code{\link{ranges2genes}}

Other CAGEr accessor methods: \code{\link{CTSSclusteringMethod}},
  \code{\link{CTSScoordinates}},
  \code{\link{CTSScumulativesTagClusters}},
  \code{\link{CTSSnormalizedTpm}},
  \code{\link{CTSStagCountTable}},
  \code{\link{CTSStagCount}}, \code{\link{GeneExpSE}},
  \code{\link{consensusClustersGR}},
  \code{\link{genomeName}}, \code{\link{inputFilesType}},
  \code{\link{inputFiles}}, \code{\link{librarySizes}},
  \code{\link{sampleLabels}},
  \code{\link{seqNameTotalsSE}}, \code{\link{tagClusters}}
}
\author{
Charles Plessy
}
\concept{CAGEr accessor methods}
\concept{CAGEr gene expression analysis functions}
