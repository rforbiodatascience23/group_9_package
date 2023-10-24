#' Transcription
#'
#' @param dna_list a list one-stringed DNA.
#'
#' @return a list of mRNA
#' @export
transcription <- function(dna_list){
  mRNA_list <- gsub("T", "U",
                    dna_list,
                    ignore.case = FALSE,
                    fixed = TRUE,
                    )
  return(mRNA_list)
}
