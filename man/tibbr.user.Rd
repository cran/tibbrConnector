\name{tibbr.user}
\alias{tibbr.user}
\title{
Search tibbr For Users
}
\description{
Searches tibbr for users.
}
\usage{
tibbr.user(connection, user = NULL)
}
\arguments{
  \item{connection}{
    a \code{tibbrConnection} object indicating the tibbr instance to search.
  }
  \item{user}{
    a character string containing the search criteria.  If \code{NULL}, tibbr
    returns all users on the tibbr instance.  (Note: This can
    take a long time to return, depending on the number of users on your
    tibbr instance.)
	
    tibbr searches the following fields for matches:
    \itemize{
      \item First name
      \item Last name
      \item Email address
      \item Login name
      \item Department
      \item Location
      \item Profile description
    }
  }
}
\details{
Errors encountered during the search process are raised by this function.
}
\value{
returns a list of \code{tibbrUser} objects describing the results of the
search.  The names of the \code{tibbrUser} objects represent fields of the
corresponding user's profile in tibbr.
}
\seealso{
\code{\link{tibbr.subject}}
}
\examples{
\dontrun{
con <- tibbr.connect("try.tibbr.com", "myusername", "mypassword")
users <- tibbr.user(con, "Sam")
users
}
}
