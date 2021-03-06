% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interactions.R
\name{interact}
\alias{interact}
\alias{interaction_combo}
\title{Interaction Functions}
\usage{
Create two new interactions: factor1.factor2 and factor1.factor3
  interact( interaction_combo("factor1", "factor2"),
            interaction_combo("factor1", "factor3")
  )
}
\arguments{
\item{...}{Interaction Combinations as generated by the \code{interaction_combo} function}
}
\description{
\code{interact} creates interaction measurement items by multipying all combination of factor items.
}
\details{
This function automatically generates interaction measurement items for a PLS SEM.
}
\examples{
data("mobi", package = "semPLS")

mobi_xm <- interact(
  interaction_combo("Image", "Expectation"),
  interaction_combo("Image", "Value")
)

mobi_pls <- modelr(mobi, mobi_mm, mobi_xm, mobi_sm)
print_paths(mobi_pls)

}

