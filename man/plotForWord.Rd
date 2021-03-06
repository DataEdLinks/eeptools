\name{plotForWord}
\alias{plotForWord}
\title{Save a graphic as a Windows MetaFile}
\usage{
plotForWord(x, fn)
}
\arguments{
  \item{x}{A stored plot object to be printed}

  \item{fn}{A string for the filename without any file
  extension}
}
\value{
Nothing. Saves a .wmf with filename \code{fn} in the
working directory.
}
\description{
Convenience function for producing Windows MetaFile
graphics for Microsoft documents
}
\details{
Uses parameters designed for import into Word and
PowerPoint documents. These are a width of 12, height of 9,
poitnsize of 16, and using Windows serif fonts.
}
\note{
Works with \code{\link{ggplot}} objects in the
\code{\link{ggplot2}} package. Saves plots to the working
directory.
}
\examples{
\dontrun{
data(cars)
library(ggplot2) # works with ggplot objects
myplot <- qplot(speed~dist, data=cars)
plotForWord(myplot, "speedanddistance")
}
}

