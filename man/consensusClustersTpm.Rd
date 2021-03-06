% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetMethods.R
\docType{methods}
\name{consensusClustersTpm}
\alias{consensusClustersTpm}
\alias{consensusClustersTpm,CAGEset-method}
\alias{consensusClustersTpm,CAGEexp-method}
\title{Extracting consensus clusters tpm matrix from CAGEset object}
\usage{
consensusClustersTpm(object)

\S4method{consensusClustersTpm}{CAGEset}(object)

\S4method{consensusClustersTpm}{CAGEexp}(object)
}
\arguments{
\item{object}{A CAGEr object.}
}
\value{
Returns the \code{matrix} of normalized expression values of CAGE clusters
across all samples.
}
\description{
Extracts a table with normalized CAGE tag values for consensus
clusters across all samples from a \code{\link{CAGEr}} object.
}
\examples{
head(consensusClustersTpm(exampleCAGEset))
head(consensusClustersTpm(exampleCAGEexp))

}
\seealso{
\code{\link{consensusClusters}}
}
\author{
Vanja Haberle
}
\concept{CAGEr clustering methods}
