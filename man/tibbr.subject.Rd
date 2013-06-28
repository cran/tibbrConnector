\name{tibbr.subject}
\alias{tibbr.subject}
\title{
Search tibbr For Subjects
}
\description{
Searches tibbr for subjects.
}
\usage{
tibbr.subject(connection, subject = NULL)
}
\arguments{
  \item{connection}{
    a \code{tibbrConnection} object indicating the tibbr instance to search.
  }
  \item{subject}{
    a character string containing the search criteria.  If \code{NULL}, tibbr
    returns all subjects on the tibbr instance.  (Note: This can
    take a long time to return, depending on the number of subjects on your
    tibbr instance.)
	
    tibbr searchs the following fields for matches:
    \itemize{
      \item Subject name
      \item Subject display name
      \item Subject description
    }
  }
}
\details{
Errors encountered during the search process are raised by this function.
}
\value{
returns a list of \code{tibbrSubject} objects describing the results of the
search.  The names of the \code{tibbrSubject} objects represent attributes
of the corresponding subject in tibbr.
}
\seealso{
\code{\link{tibbr.user}}
}
\examples{
\dontrun{
con <- tibbr.connect("try.tibbr.com", "myusername", "mypassword")
subs <- tibbr.subject(con, "analytics")
subs
}
}
