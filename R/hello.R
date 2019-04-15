# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#' Retrieve a Java instance of SpellCorrector.
#'
#' Retrieve a Java instance of SpellCorrector, with the training file
#' specified. Language model is trained before the instance is returned.
#' The spell corrector is adapted from Peter Norvig's demonstration.
#'
#' @return a Java instance of SpellCorrector
#' @export
getmorferr<-function() {
  .jinit('.', '-Djava.library.path=./inst/java/libs')
  print('sssssss')
  .jaddLibrary('morfer', 'inst/java/R-morfer-1.0-SNAPSHOT-jar-with-dependencies.jar')
  .jaddClassPath('inst/java/R-morfer-1.0-SNAPSHOT-jar-with-dependencies.jar')
  corrector <- .jnew('uek/nlp/Morpheus')
  return(corrector)
}

#' Retrieve a Java instance of SpellCorrector.
#'
#' Retrieve a Java instance of SpellCorrector, with the training file
#' specified. Language model is trained before the instance is returned.
#' The spell corrector is adapted from Peter Norvig's demonstration.r
#' @export
hello <- function() {
  print("Hello, world!")
}
