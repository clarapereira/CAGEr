% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExportMethods.R
\docType{methods}
\name{plotReverseCumulatives}
\alias{plotReverseCumulatives}
\alias{plotReverseCumulatives,CAGEr-method}
\title{Plot reverse cumulative number of CAGE tags per CTSS}
\usage{
plotReverseCumulatives(object, values = c("raw", "normalized"),
  fitInRange = c(10, 1000), onePlot = FALSE, main = NULL,
  legend = TRUE, xlab = "number of CAGE tags",
  ylab = "number of CTSSs (>= nr tags)", xlim = c(1, 1e+05),
  ylim = c(1, 1e+06))

\S4method{plotReverseCumulatives}{CAGEr}(object, values = c("raw",
  "normalized"), fitInRange = c(10, 1000), onePlot = FALSE,
  main = NULL, legend = TRUE, xlab = "number of CAGE tags",
  ylab = "number of CTSSs (>= nr tags)", xlim = c(1, 1e+05),
  ylim = c(1, 1e+06))
}
\arguments{
\item{object}{A CAGEr object}

\item{values}{Which values should be plotted: \code{raw} (default) for raw CAGE
tag counts or \code{normalized} for normalized tag count values.}

\item{fitInRange}{An integer vector with two values specifying a range of tag
count values to be used for fitting a power-law distribution to reverse
cumulatives.  Ignored is set to \code{NULL}.  See Details.}

\item{onePlot}{Logical, should all CAGE datasets be plotted in the same
plot (\code{TRUE}) or in separate plots (\code{FALSE}).}

\item{main}{Main title for the plot.}

\item{legend}{Set to \code{NULL} to prevent the display of the sample legend.}

\item{xlab, ylab}{Axis labels passed to \code{\link{plot}}.}

\item{xlim, ylim}{Axis range parameters passed to \code{\link{plot}}.}
}
\value{
Plots of reverse cumulative number of CAGE tags per CTSS for each CAGE
dataset within CAGEr object.  Alpha values of fitted power-laws and suggested
referent power-law distribution are reported on the plot in case \code{values = "raw"}.
}
\description{
Plots the reverse cumulative distribution of the number of CAGE
tags per CTSS for all CAGE datasets present in the \code{\link{CAGEr}} object.
The plots should be used as help in choosing the parameters for power-law
normalization: the range of values to fit the power-law and the slope of the
referent power-law distribution (Balwierz \emph{et al}., Genome Biology 2009).
}
\details{
Number of CAGE tags (X-axis) is plotted against the number of TSSs that
are supported by >= of that number of tags (Y-axis) on a log-log scale for each
sample. In addition, a power-law distribution is fitted to each reverse cumulative
using the values in the range specified by \code{fitInRange} parameter. The fitted
distribution is defined by \code{y = -1 * alpha * x + beta} on the log-log scale,
and the value of \code{alpha} for each sample is shown on the plot. In addition,
a suggested referent power-law distribution to which all samples should be
normalized is drawn on the plot and corresponding parameters (slope alpha and total
number of tags T) are denoted on the plot.  Referent distribution is chosen so
that its slope (alpha) is the median of slopes fitted to individual samples and
its total number of tags (T) is the power of 10 nearest to the median number of tags
of individual samples.  Resulting plots are helpful in deciding whether power-law
normalization is appropriate for given samples and reported \code{alpha} values aid
in choosing optimal \code{alpha} value for referent power-law distribution to
which all samples will be normalized. For details about normalization see
\code{\link{normalizeTagCount}} function.
}
\examples{
plotReverseCumulatives(exampleCAGEset, fitInRange = c(10,500), onePlot = TRUE)
plotReverseCumulatives(exampleCAGEset, values = "normalized", onePlot = TRUE)

plotReverseCumulatives( exampleCAGEexp, xlim = c(1, 1e4), ylim = c(1, 1e5)
                      , fitInRange = c(5,100), onePlot = TRUE)
plotReverseCumulatives( exampleCAGEexp, values = "normalized"
                      , fitInRange = c(200, 2000), onePlot = TRUE)
plotReverseCumulatives( exampleCAGEexp[,4:5], fitInRange = c(5,100)
                      , onePlot = TRUE, main = "prim6 replicates")

}
\references{
Balwierz \emph{et al}. (2009) Methods for analyzing deep sequencing
expression data: constructing the human and mouse promoterome with deepCAGE data,
\emph{Genome Biology} \strong{10}(7):R79.
}
\seealso{
\code{\link{normalizeTagCount}}

Other CAGEr plot functions: \code{\link{hanabiPlot}},
  \code{\link{plotAnnot}}, \code{\link{plotCorrelation}},
  \code{\link{plotExpressionProfiles}},
  \code{\link{plotInterquantileWidth}}
}
\author{
Vanja Haberle
}
\concept{CAGEr plot functions}
