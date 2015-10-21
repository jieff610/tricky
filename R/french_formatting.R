#' Formatting numbers according to French conventions
#'
#' This function allows you to format numbers according to French conventions
#' @param x the number you need to format
#' @keywords format
#' @export
#' @examples
#' french_formatting(11000.12)
#'
french_formatting <- function(x) {
  require(stringr, quietly = TRUE)
  output <- str_trim(format(x, big.mark = " ", decimal.mark = ","))
  return(output)
  }
