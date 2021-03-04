test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


test_that("Font family", {
  bfaggtheme::theme_bfa()
  expect_equal(ggplot2::theme_get()$text$family, "Century Gothic")
})
