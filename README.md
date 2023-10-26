# group_9_package
---
title: "group_9_package"
output: rmarkdown::github_document
vignette: >
  %\VignetteIndexEntry{group_9_package}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---
```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
```
```{r setup}
library(group9PackcentralDogma)
```
# Description of R package
This R package is made as a tribute to the central dogme, which is a deeply fundamental part of molecular biology. The package hence provides the possibility of simulating all processes within the central dogma. 
From any randomly generated coding single stranded DNA string, transcription and translation can occur. Furthermore, an analysis of the uses aminoacids in the generated peptide is performed and displayed by the use of ggplot and stringr dependencies.
## Function 1: Generate coding DNA
he function dna_generator, takes an integer, then returns a DNA strand based on this integer. Example: dna_generator(10) -\> generates a string with with length 10 of random letters chosen from either A, T, G, or C. This format is applicable for the "transcription" function.
## Function 2: The transcription function
The transcription function takes a singles strand of dna as input, and takes this string and converts it into mRNA. Note that this assumes that the dna input is all coding. 
## Function 3: Codons
The function *get_codons(sequence, start = 1)* returns a list of codons extracted from the input sequence. The start index of the codon extraction can be specified.
## Function 4: Translation
The 'translator' function, takes as input a list of codons. It then searches a dictionary for the corresponding aminoacid and creates a string of aminoacids without spaces. forexample if input is: 'UUU' the function will output: 'F' for Phenylalanine.
## Function 5: Visualization
The function aa_counts takes as input a peptide (amino acids in sequence given as a string). It first splits up the string into individual one-letter-codes for amino acids and then counts all occuring amino acids which are stored in a dataframe and visualized using a bar plot. The function returns the bar plot.
## Points from the group discussion
3) It is good to limit the number of dependencies because the dependencies increase the size of our package. Also, a high number of dependencies increases a chance that they will include a function with a same name, which might cause some unexpected behaviour, although this issue can be avoided by specifying the package from which the function comes.
4) Imports are used for packages which are needed by our package, but not needed to be loaded with library(). You can import in different ways (::, @import, @importFrom).
