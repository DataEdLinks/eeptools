\name{lag_data}
\alias{lag_data}
\title{Create a lag}
\usage{
lag_data(df, group, time, periods, values)
}
\arguments{
  \item{df}{A dataframe with groups, time periods, and a
  variable to be lagged}

  \item{group}{The grouping factor in the dataframe}

  \item{values}{The names of the variables to be lagged}

  \item{time}{The variable representing time periods}

  \item{periods}{A scalar for the number of periods to be
  lagged in the data}
}
\value{
A dataframe with a newly created variable lagged
}
\description{
Lag variables by an arbitrary number of periods even if the
data is grouped
}
\examples{
test_data <- expand.grid(id = sample(letters, 10),
                        time = 1:10)
test_data$value1 <- rnorm(100)
test_data$value2 <- runif(100)
test_data$value3 <- rpois(100, 4)
group <- "id"
time <- "time"
values <- c("value1", "value2")
vars <- c(group, time, values)
periods <- 2
newdat <- lag_data(test_data, group="id", time="time",
                 values=c("value1", "value2"), periods=3)
}

