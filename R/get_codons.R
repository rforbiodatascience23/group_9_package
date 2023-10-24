#' Extract codons from a sequence
#'
#' @param sequence input sequence to parse into the codons
#' @param start start position for the codon extraction
#'
#' @return list of codons
#' @export
#'
#' @examples get_codons("GUCCCAAGUC")
get_codons <- function(sequence, start = 1) {

  # get length of the sequence
  sequence_length <- nchar(sequence)

  # get codons from the sequence
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)

}
