#' Print a examiner_result
#'
#' @rdname print.examiner_result
#' @param x a examiner_result object to be printed
#' @param ... additional args (not used here)
#'
#'
#' @export
print.examiner_result <- function(x, ...) {
  has_code <- "code" %in% names(x)
  if (x$message == "")
    oneline <- paste0("examiner result: *", x$action, "*\n")
  else
    oneline <- paste0("examiner result *", x$action, "* with message:\n", x$message)

  cat(oneline)
  if (has_code) {
    cat("\nCODE:\n")
    print(x$code)
  }
}
