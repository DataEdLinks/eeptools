\name{mapmerge2}
\alias{mapmerge2}
\title{Combine an S4 polygon object with a dataframe}
\usage{
mapmerge2(mapobj, data, xid, yid)
}
\arguments{
  \item{mapobj}{Name of an S4 SpatialPolygonsDataFrame}

  \item{data}{Name of an S3 dataframe}

  \item{xid}{Name of ID variable in the
  SpatialPolygonsDataFrame}

  \item{yid}{Name of ID variable in the S3 dataframe}
}
\value{
A SpatialPolygonsDataFrame with new variables attached from
supplied dataframe
}
\description{
Convenience function for merging dataframes and S4 spatial
polygon objects.
}
\examples{
\dontrun{
xx <- maptools::readShapePoly(system.file("shapes/sids.shp", package="maptools")[1], IDvar="FIPSNO")
yy<-as(xx,"data.frame")
yy$newvar<-sample(letters,nrow(yy),replace=TRUE)
yy<-subset(yy,select=c("FIPS","newvar"))
newpoly<-mapmerge(xx,yy,xid="FIPS",yid="FIPS")
}
}

