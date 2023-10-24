test_that("generates a codon list of correct length", {
  seq = "AAACCCGGU"

  codon_list_correct = substring(seq, first = seq(from = 1, to = 9, by = 3), last = seq(from = 3, to = 9, by = 3))
  codon_list_from_function = get_codons(seq)

  expect_equal(length(codon_list_correct), length(codon_list_from_function))
})
