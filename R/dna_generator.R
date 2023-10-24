



#' DNA Generator
#'
#' @param n where n is the size of the DNA strand
#'
#' @return returns the DNA strand of the desired size as a string without spaces
#' @export
#'
#' @examples dna_generator(10)
dna_generator <- function(n){
  dna_vector <- sample(c("A", "T", "G", "C"), size = n, replace = TRUE)
  dna_strand <- paste0(dna_vector, collapse = "")
  return(dna_strand)
}
