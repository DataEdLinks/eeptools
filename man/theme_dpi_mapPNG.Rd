\name{theme_dpi_mapPNG}
\alias{theme_dpi_mapPNG}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
an alternate ggplot2 theme developed for PNG or JPG maps
}
\description{
This is a custom ggplot2 theme developed for the Wisconsin Department of Public Instruction for 
making PNG or JPG maps
}
\usage{
theme_dpi_mapPNG(base_size = 18, base_family = "")
}

\arguments{
  \item{base_size}{
specify the font size as a numeric value, this value is optional
}
  \item{base_family}{
specify the font family, this value is optional
}
}
\details{
All values are optional
}
\value{
A theme object which is a list of attributes applied to a ggplot2 object.
}
\references{
For more information see https://github.com/hadley/ggplot2/wiki/Themes
}
\author{
Jared E. Knowles
}

\seealso{
This uses \code{\link{unit}} from the gridExtra package extensively. 
See also \code{\link{theme_bw}} from the ggplot2 package.
}

\examples{
# Data
crimes <- data.frame(state = tolower(rownames(USArrests)), USArrests)
require(reshape) # for melt
crimesm <- melt(crimes, id = 1)

# No DPI theme
states_map <- map_data("state")
ggplot(crimes, aes(map_id = state)) + geom_map(aes(fill = Murder), map = states_map) + 
expand_limits(x = states_map$long, y = states_map$lat)+ labs(title="USA Crime")

# Draw map
last_plot() + coord_map()+theme_dpi_mapPNG()
  
# DPI theme
ggplot(crimesm, aes(map_id = state)) + geom_map(aes(fill = value), map = states_map) + 
expand_limits(x = states_map$long, y = states_map$lat) + facet_wrap( ~ variable)+
theme_dpi_mapPNG()

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~aplot }
\keyword{ ~misc }% __ONLY ONE__ keyword per line
