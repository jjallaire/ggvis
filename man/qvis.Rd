% Generated by roxygen2 (4.0.1): do not edit by hand
\name{qvis}
\alias{qvis}
\title{Quick vis: a succint way of generating simple ggvis plot specifications.}
\usage{
qvis(data, ...)
}
\arguments{
\item{data}{The data set where}

\item{...}{Properties and layer arguments.

  If the name of the argument matches the name of a known property, it will
  be added to the plot properties. Otherwise it will be passed as an
  argument to every layer. If you want to pass different arguments to
  different layers, you'll need to add layers on one at a time.

  The first two unnamed components are taken to be \code{x} and \code{y}.
  Any additional unnamed components will raise an error.}
}
\description{
\code{qvis} is a succinct way of creating simple plots. It achieves this
succinctness by being a little bit magical and trying to guess what you
mean. It is most suitable for creating basic data graphics like scatterplots
and histograms. As you start creating more complicated plots, you'll
want to use \code{\link{ggvis}} directly to get more control and
avoid ambiguity.
}
\section{Compared to \code{qplot}}{


\code{qvis} is somewhat less powerful than \code{qplot}. \code{qvis}
contains the most commonly used arguments from \code{qplot}, but it
drops the many extra arguments that are easy to replicate by adding
the right component on to the plot.
}
\examples{
# A basic scatterplot
mtcars \%>\% qvis(~mpg, ~wt)
mtcars \%>\% qvis(~mpg, ~wt, fill = ~cyl)
mtcars \%>\% qvis(~mpg, ~wt, fill := "red")

# Scatterplot + smoother
mtcars \%>\% qvis(~mpg, ~wt) \%>\% layer_smooths()

# Basic histogram
mtcars \%>\% qvis(~mpg)
mtcars \%>\% qvis(~mpg, binwidth = 2)

# It's not currently possible to create a plot of variables
# stored only in the local environment
x <- runif(10)
y <- runif(10)
\dontrun{environment() \%>\% qvis(~x, ~y)}
}

