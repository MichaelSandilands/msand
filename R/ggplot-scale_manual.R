#' msand palettes for use with scales
#'
#' @description
#' These palettes are mainly called internally by msand `scale_*_msand()` functions.
#'
#' @examples
#' library(scales)
#' scales::show_col(palette_msand())
#'
#' @name palette_msand
NULL
#'
#' @rdname palette_msand
#' @export
palette_msand <- function() {

    c(sand         = "#f1c761",
      orange       = "#dd8925",
      red          = "#d80000",
      magenta      = "#bc5090",
      violet       = "#8F00FF",
      navy         = "#003f5c",
      blue         = "#4066e0",
      green        = "#00ff00",
      dark_green   = "#008000",
      grey         = "#778899",
      charcoal     = "#36454f",
      burgundy     = "#800020"
    ) %>%

        # convert to upper case
        toupper()

}
