\name{pbdNCDF4-package}
\alias{pbdNCDF4-package}
\alias{pbdNCDF4}
\docType{package}
\title{Programming with Big Data -- Interface to Parallel Unidata NetCDF4 Format Data Files}
\description{
    This package adds collective parallel read and write capability
    to the R package ncdf4 version 1.8. Typical use is as a
    parallel NetCDF4 file reader in SPMD style programming. Each R
    process reads and writes its own data in a synchronized
    collective mode, resulting in faster parallel performance.
    Performance improvement is conditional on a parallel file system.
}
\details{
\tabular{ll}{
  Package: \tab pbdNCDF4\cr
  Type: \tab Package\cr
%  Version: \tab 0.1-2\cr
%  Date: \tab 2010-02-18\cr
  License: \tab GPL\cr
  LazyLoad: \tab yes\cr
}

    The parallel HDF5 and NetCDF4 (version 4.1 or later) libraries are
    prerequisite, then this package will link with them and improve the
    I/O performance via three mainly functions \code{nc_creat_par},
    \code{nc_open_par}, and \code{nc_var_par_access} added to the original
    ncdf4 (1.8) package to enable collective reading and writing.

    If only serial NetCDF4 and HDF5 libraries are available, then this
    package will function exactly the same as \pkg{ncdf4}. All functionalities
    of \pkg{ncdf4} (version 1.8) are followed.
}
\references{
  The HDF Group:
  \url{http://www.hdfgroup.org/HDF5/}

  Unidata:
  \url{http://www.unidata.ucar.edu/software/netcdf/}

  Programming with Big Data in R Website:
  \url{http://r-pbd.org/}
}
\author{
  George Ostrouchov, Pragneshkumar Patel \email{pragnesh@utk.edu},
  Wei-Chen Chen, Drew Schmidt, and David Pierce.
}
\seealso{
  \code{nc_create_par}, \code{nc_open_par}, \code{nc_var_par_access},
  and \code{ncdump}.
}
\examples{
\dontrun{
### Under command mode, run the demo with 2 processors by
### (Use Rscript.exe for windows system)
mpiexec -np 2 Rscript -e "demo(ncwrite,'pbdNCDF4',ask=F,echo=F)"
mpiexec -np 2 Rscript -e "demo(ncread,'pbdNCDF4',ask=F,echo=F)"
mpiexec -np 2 Rscript -e "demo(ncdump,'pbdNCDF4',ask=F,echo=F)"
}
}
