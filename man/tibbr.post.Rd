\name{tibbr.post}
\alias{tibbr.post}
\title{
Post A Message To tibbr
}
\description{
Posst a message to tibbr. The post can include links or attached files.
}
\usage{
tibbr.post(connection, content, subject = NULL, links = character(0),
    attachments = character(0))
}
\arguments{
  \item{connection}{
    a \code{tibbrConnection} object indicating the tibbr instance to post to.
  }
  \item{content}{
    a character string containing the content of the message to post.
  }
  \item{subject}{
    a character vector or list containing any combination of character strings
    containing the fully-qualified subject names (including the subject names
    of all parent subjects, separated by \verb{.}) of subjects,
    \code{tibbrSubject} objects, and \code{tibbrUser} objects to which this 
    message should post. If \code{NULL}, the message is posted to the wall of
    the user specified in the creation of the \code{connection}.  

    Note that subject names consist of alphanumeric characters and the 
    special characters \verb{.}, \verb{-}, and \verb{_}, and may optionally start
    with the subject indicator character \verb{@}.
  }
  \item{links}{
    a character vector containing URLs to link to in this post.
  }
  \item{attachments}{
    a character vector specifying the names of files to attach to this post.
  }
}
\value{
returns \code{TRUE} invisibly.
}
\details{
Errors encountered during the tibbr posting process will be raised by this
function.
}
\seealso{
\code{\link{tibbr.connect}}, \code{\link{tibbr.subject}}, \code{\link{tibbr.user}}
}
\examples{
\dontrun{
con <- tibbr.connect("try.tibbr.com", "myusername", "mypassword")
tibbr.post(con, "Hello, tibbr!")  # Posts to your wall
tibbr.post(con, "Hello, salesmen!", subject="Sales")
tibbr.post(con, "Hello, everyone.",
    subject=c("Sales", "Marketing", "Engineering.ProjectAlpha"))
tibbr.post(con, "Here's that proposal.", subject="Sales",
    links="http://sales/Alpha_Proposal/",
    attachments=c("AlphaCoverLetter.docx","AlphaProjections.csv"))
alpha <- tibbr.subject(con, "alpha")
tibbr.post(con, "To everyone involved in the Alpha project: Good job!", subject=alpha)
}
}
