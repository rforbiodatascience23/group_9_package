
#' Translation
#'
#' @param codons a triplet coding for an aminoacid
#'
#' @return reads codon and gives aminoacid
#' @export
#'
translator <- function(codons){
  aminoacids <- paste0(triplets[codons], collapse = "")
  return(aminoacids)
}
