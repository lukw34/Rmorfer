
#' Retrieve a Java instance of Morfer
#'
#' @return a Java instance of Morfer
#' @export
get_morfer<-function() {
  .jaddClassPath('inst/java/Morfer-lib-1.0-SNAPSHOT-jar-with-dependencies.jar')
  return (.jnew('uek/nlp/Morfer'))
}

#' Retrieve  array which represent plain data return by morfeusz library
#' @param text_to_analyze Text to analyze
#' @return an array in which every element represent one line from morfeusz result
#' @export
analyze_to_array <- function(text_to_analyze) {
  morfer = get_morfer();
  result_array <- .jcall(morfer, "[S", "analyzeToArray", text_to_analyze)
  print(result_array)
}
