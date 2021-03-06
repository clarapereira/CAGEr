% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExpressionProfilingMethods.R
\docType{methods}
\name{extractExpressionClass}
\alias{extractExpressionClass}
\alias{extractExpressionClass,CAGEexp-method}
\alias{extractExpressionClass,CAGEset-method}
\title{Extract elements of the specified expression class}
\usage{
extractExpressionClass(object, what, which = "all")

\S4method{extractExpressionClass}{CAGEexp}(object, what, which = "all")

\S4method{extractExpressionClass}{CAGEset}(object, what, which = "all")
}
\arguments{
\item{object}{A \code{\link{CAGEset}} object.}

\item{what}{Which level of expression clustering should be used. Can be either
\code{"CTSS"} to extract expression class of individual CTSSs or
\code{"consensusClusters"} to extract expression class of consensus clusters.}

\item{which}{Which expression class should be extracted. It has to be one of the valid
expression class labels (as returned by \code{\link{expressionClasses}} function),
or \code{"all"} to extract members of all expression classes.}
}
\value{
Returns a \code{data.frame} of CTSSs (when \code{what = "CTSS"}) or consensus clusters
(when \code{what = "consensusClusters"}) belonging to a specified expression class, with
genomic coordinates and additional information.  Last column contains the label of the
corresponding expression class.
}
\description{
Extracts CTSSs or consensus clusters belonging to a specified expression class.
}
\examples{
CTSSexprClasses <- extractExpressionClass(exampleCAGEset, what = "CTSS", which = "all")
head(CTSSexprClasses)

}
\seealso{
\code{\link{getExpressionProfiles}}, \code{\link{plotExpressionProfiles}},
\code{\link{expressionClasses}}.
}
\author{
Vanja Haberle
}
