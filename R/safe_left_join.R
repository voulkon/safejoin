#' Safe left join
#'
#' @inheritDotParams dplyr::left_join
#' @param action What should happen when the number of rows changes from a join?
#'   Options include: 'error', 'warning', or 'message'. By default 'error'.
#'
#' @return
#' @export
#'
#' @examples
#' x <- data.frame(key = c("a", "b"), value_x = c(1, 2))
#' y <- data.frame(key = c("a", "a"), value_y = c(1, 1))
#' safe_left_join(x, y)
safe_left_join <- function(..., action="error") {
  # Parse parameters
  params <- list(...)
  if (is.null(params$x)) {
    x <- params[[1]]
  } else {
    x <- params$x
  }


  # Perform the join
  data <- dplyr::left_join(...)

  # Test if safe
  if (nrow(x) != nrow(data)) {
    msg <- glue::glue("Input data x had {nrow(x)} rows. After performing the join the data has {nrow(data)} rows.")
    if (action == "message") {
      message(msg)
    } else if (action == "warning") {
      warning(msg)
    } else {
      stop(msg)
    }
  }

  data
}
