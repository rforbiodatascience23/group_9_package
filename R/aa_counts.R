#' aa_counts
#'
#' @param peptide is a string containing a sequence of amino acids constituting a peptide
#'
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#'
#' @return outputs a bar-plot with counts of all occuring amino acids in the input peptide
#' @export
aa_counts <- function(peptide){
  aas_split <- peptide |>                   # split input peptide in separate characters
    stringr::str_split(pattern = stringr::boundary("character"),
                       simplify = TRUE) |>
    as.character() |>
    unique()                                # remove duplicate amino acids

  counts <- sapply(aas_split,
                   function(amino_acid) stringr::str_count(string = peptide,
                                                           pattern =  amino_acid)) |>

    as.data.frame()                         # counting occurences of all amino acids in peptide and returning as dataframe

  colnames(counts) <- c("Counts")           # renaming column in dataframe to "Counts"
  counts[["peptide"]] <- rownames(counts)   # renaming rows in dataframe to amino acids

  aa_plot <- counts |>                      # making a bar plot of the counts
    ggplot2::ggplot(ggplot2::aes(x = peptide,
                                 y = Counts,
                                 fill = peptide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plot)
}
