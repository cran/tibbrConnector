\name{tibbr.connect}
\alias{tibbr.connect}
\alias{tibbr.disconnect}
\alias{print.tibbrConnection}
\title{
Connect To tibbr
}
\description{
Creates a connection to the tibbr service.
}
\usage{
tibbr.connect(server, user, password)
tibbr.disconnect(connection)

\S3method{print}{tibbrConnection}(x, \dots)
}
\arguments{
  \item{server}{
    a character string containing the hostname of the tibbr instance to connect to.  Do not include the \code{http://} or \code{https://} prefix.
  }
  \item{user}{
    a character string specifying the name of the tibbr user to connect as.
  }
  \item{password}{
    a character string containing the password of the tibbr user to connect as.
  }
  \item{connection}{
    a \code{tibbrConnection} object from which to disconnect.
  }
  \item{x}{
    an object that inherits from class \code{"tibbrConnection"}.
  }
  \item{\dots}{
    additional arguments passed to the print method.
  }
}
\value{
\item{\code{tibbr.connect}}{returns a \code{tibbrConnection} object containing the
following items:

\itemize{
\item{\code{server}  -- The name of the server to which this object is connected.}
\item{\code{user}  --  The authentication information returned by the tibbr API.}
\item{\code{clientkey}  --  The tibbr API client key that references the authenticated
session this object represents.}
}
}
\item{\code{tibbr.disconnect}}{returns \code{TRUE} invisibly.}
}
\details{
Errors encountered during the tibbr login or logout process are raised by
these functions.
}
\seealso{
\code{\link{tibbr.post}}
}
\examples{
\dontrun{
con <- tibbr.connect("try.tibbr.com", "myusername", "mypassword")
con
tibbr.disconnect(con)
}
}
