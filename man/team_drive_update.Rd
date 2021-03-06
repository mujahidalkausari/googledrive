% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/team_drive_update.R
\name{team_drive_update}
\alias{team_drive_update}
\title{Update an existing Team Drive}
\usage{
team_drive_update(team_drive, ..., verbose = TRUE)
}
\arguments{
\item{team_drive}{Anything that identifies one specific Team Drive: its name,
its id or URL marked with \code{\link[=as_id]{as_id()}}, or a \code{\link{dribble}}. Is pre-processed
with \code{\link[=as_team_drive]{as_team_drive()}}.  Read more about \link[=team_drives]{Team Drives}.}

\item{...}{Named parameters to pass along to the Drive API. See the "Request
body" section of the Drive API docs for the associated endpoint.}

\item{verbose}{Logical, indicating whether to print informative messages
(default \code{TRUE}).}
}
\value{
An object of class \code{\link{dribble}}, a tibble with one row per item.
}
\description{
Update the metadata of an existing Team Drive, e.g. its background image or
theme.

Note: \href{https://gsuite.google.com/learning-center/products/drive/get-started-team-drive/}{Team Drives}
are only available to users of certain enhanced Google services, such as G
Suite Enterprise, G Suite Business, or G Suite for Education.
}
\examples{
\dontrun{
## create a Team Drive
td <- team_drive_create("I love themes!")

## see the themes available to you
themes <- drive_user(fields = "teamDriveThemes")$teamDriveThemes
purrr::map_chr(themes, "id")

## cycle through various themes for this Team Drive
td <- team_drive_update(td, themeId = "bok_choy")
td <- team_drive_update(td, themeId = "cocktails")

## clean up
team_drive_rm(td)
}
}
\seealso{
Wraps the \code{teamdrives.update} endpoint:
\itemize{
\item \url{https://developers.google.com/drive/v3/reference/teamdrives/update}
}
}
