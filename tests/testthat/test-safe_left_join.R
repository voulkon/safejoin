context("test-safe_left_join")

test_that("Error is thrown when rows are added to x.", {
  x1 <- dplyr::tibble(
    key = c(1, 2, 3, 4, 5),
    value_x = c(33, 44, 12, 55, 33)
  )

  y1 <- dplyr::tibble(
    key = c(1, 2, 3, 4, 5, 5),
    value_y = c(33, 44, 12, 55, 33, 55)
  )

  expect_error(safe_left_join(x1, y1))
})


test_that("Safe join has the correct number of rows.", {
  x2 <- dplyr::tibble(
    key = c(1, 2, 3, 4, 5, 6),
    value_x = c(33, 44, 12, 55, 33, 66)
  )

  y2 <- dplyr::tibble(
    key = c(1, 2, 3, 4, 5),
    value_y = c(33, 44, 12, 55, 33)
  )

  data <- safe_left_join(x2, y2)

  expect_equal(nrow(data), 6)


})
