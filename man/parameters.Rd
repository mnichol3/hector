% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aadoc.R, R/RcppExports.R
\name{parameters}
\alias{parameters}
\alias{PREINDUSTRIAL_CO2}
\alias{BETA}
\alias{Q10_RH}
\alias{WARMINGFACTOR}
\alias{F_NPPV}
\alias{F_NPPD}
\alias{F_LITTERD}
\alias{F_LUCV}
\alias{F_LUCD}
\alias{ECS}
\alias{AERO_SCALE}
\alias{VOLCANIC_SCALE}
\alias{DIFFUSIVITY}
\title{Identifiers for model parameters}
\usage{
PREINDUSTRIAL_CO2()

BETA(biome = "")

Q10_RH(biome = "")

WARMINGFACTOR(biome = "")

F_NPPV(biome = "")

F_NPPD(biome = "")

F_LITTERD(biome = "")

F_LUCV()

F_LUCD()

ECS()

AERO_SCALE()

VOLCANIC_SCALE()

DIFFUSIVITY()
}
\arguments{
\item{biome}{Biome for which to retrieve parameter. If missing or
`""`, default to `"global"`.}
}
\description{
These identifiers correspond to settable parameters that change the model
behavior and are subject to uncertainty.  All of these can be set using the
\code{\link{SETDATA}} message type.  Changing any of these parameters will
typically invalidate the hector core's internal state; therefore, after
setting one or more of these values you should call \code{\link{reset}} before
attempting to run the model again.  This will rerun the spinup and produce a
new internally consistent state.  Attempting to run the model without resetting
first will usually produce an error (often with a message about failing to conserve
mass).
}
\section{Functions}{
\itemize{
\item \code{PREINDUSTRIAL_CO2}: Preindustrial CO2 concentration (\code{"ppmv CO2"})

\item \code{BETA}: CO2 fertilization factor (\code{"(unitless)"})

\item \code{Q10_RH}: Heterotrophic respiration temperature sensitivity factor (\code{"(unitless)"})

\item \code{WARMINGFACTOR}: Biome-specific warming factor (`(unitless)`)

\item \code{F_NPPV}: NPP fraction to vegetation (\code{"(unitless)"})

\item \code{F_NPPD}: NPP fraction to detritus (\code{"(unitless)"})

\item \code{F_LITTERD}: Litter fraction to detritus (\code{"(unitless)"})

\item \code{F_LUCV}: LUC fraction to vegetation (\code{"(unitless)"})

\item \code{F_LUCD}: LUC fraction to detritus (\code{"(unitless)"})

\item \code{ECS}: Equilibrium Climate Sensitivity (\code{"degC"})

\item \code{AERO_SCALE}: Aerosol forcing scaling factor (\code{"(unitless)"})

\item \code{VOLCANIC_SCALE}: Volcanic forcing scaling factor (\code{"(unitless)"})

\item \code{DIFFUSIVITY}: Ocean heat diffusivity (\code{"cm2/s"})
}}

\section{Note}{

Because these identifiers are provided as \code{#define} macros in the hector code,
these identifiers are provided in the R interface as function.  Therefore,
these objects must be called to use them; \emph{e.g.}, \code{GETDATA()}
instead of the more natural looking \code{GETDATA}.
}

\seealso{
Other capability identifiers: \code{\link{carboncycle}},
  \code{\link{concentrations}}, \code{\link{constraints}},
  \code{\link{emissions}}, \code{\link{forcings}},
  \code{\link{haloconstrain}}, \code{\link{haloemiss}},
  \code{\link{haloforcings}}, \code{\link{methane}},
  \code{\link{ocean}}, \code{\link{so2}},
  \code{\link{temperature}}
}
\concept{capability identifiers}
