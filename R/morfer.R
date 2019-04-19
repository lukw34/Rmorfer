#' Retrieve a Java instance of Morfer
#' @param filepath path which point to text file
#' @return a Java instance of Morfer
#' @export
#'
getMorfer <- function() {
  .jaddClassPath('inst/java/Morfer-lib-1.0-SNAPSHOT-jar-with-dependencies.jar')
  return (.jnew('uek/nlp/Morfer'))
}

#' Retrieve  a Java File object for specific path
#' @param filepath path which point to text file
#' @return an File object wich represent specific file
#' @export

getFileData <- function(filepath) {
  return(.jnew('java/io/File', filepath))
}

#' Retrieve  array which represent plain data return by morfeusz library
#' @param text_to_analyze data
#' @return an array in which every element represent one line from morfeusz result
#' @export
analyzeToArray <- function(data) {
  morfer = getMorfer();
  result_array <- .jcall(morfer, "[S", "analyzeToArray", data)
  print(result_array)
}

#' Retrieve  array which represent plain data return by morfeusz library
#' @param text_to_analyze data
#' @return an array in which every element represent one line from morfeusz result
#' @export
analyzeToArray <- function(data) {
  morfer = getMorfer();
  result_array <- .jcall(morfer, "S", "analyzeToArray", data)
  print(result_array)
}
