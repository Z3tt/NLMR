% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nlm_gaussianfield.R
\name{nlm_gaussianfield}
\alias{nlm_gaussianfield}
\title{nlm_gaussianfield}
\usage{
nlm_gaussianfield(ncol, nrow, resolution = 1, autocorr_range = 10,
  mag_var = 5, nug = 0.2, mean = 0.5, user_seed = NULL,
  rescale = TRUE)
}
\arguments{
\item{ncol}{[\code{numerical(1)}]\cr
Number of columns forming the raster.}

\item{nrow}{[\code{numerical(1)}]\cr
Number of rows forming the raster.}

\item{resolution}{[\code{numerical(1)}]\cr
Resolution of the raster.}

\item{autocorr_range}{[\code{numerical(1)}]\cr
Maximum range (raster units) of spatial autocorrelation.}

\item{mag_var}{[\code{numerical(1)}]\cr
Magnitude of variation over the entire landscape.}

\item{nug}{[\code{numerical(1)}]\cr
Magnitude of variation in the scale of \code{autocorr_range},
smaller values lead to more homogeneous landscapes.}

\item{mean}{[\code{numerical(1)}]\cr
Mean value over the field.}

\item{user_seed}{[\code{numerical(1)}]\cr
Set random seed for the simulation}

\item{rescale}{[\code{numeric(1)}]\cr
If \code{TRUE} (default), the values are rescaled between 0-1.}
}
\description{
Simulates a spatially correlated random fields (Gaussian random
fields) neutral landscape model.
}
\details{
Gaussian random fields are a collection of random numbers on a spatially
discrete set of coordinates (landscape raster). Natural sciences often apply
them with spatial autocorrelation, meaning that objects which distant are more
distinct from one another than they are to closer objects.
}
\examples{
# simulate random gaussian field
gaussian_field <- nlm_gaussianfield(ncol = 90, nrow = 90,
                                    autocorr_range = 60,
                                    mag_var = 8,
                                    nug = 5)

\dontrun{
# visualize the NLM
landscapetools::show_landscape(gaussian_field)
}

}
\references{
Kéry & Royle (2016) \emph{Applied Hierarchical Modeling in Ecology}
Chapter 20
}
