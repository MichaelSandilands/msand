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

    c(sand         = "#d3ba68",
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

#' msand colors and fills for ggplot2.
#'
#' @description
#' The msand scales add colors that work nicely with `theme_msand()`.
#'
#'  @details
#' \describe{
#'
#' \item{`scale_colour_msand`}{
#' For use when `colour` is specified as an `aes()` in a ggplot.}
#'
#' \item{`scale_fill_msand`}{
#' For use when `fill` is specified as an `aes()` in a ggplot.}
#' }
#'
#' @seealso [theme_msand()]
#'
#' @param ... common discrete scale parameters: `name`, `breaks`, `labels`, `na.value`, `limits` and `guide`. See [discrete_scale()] for more details
#'
#' @examples
#' library(ggplot2)
#'
#' diamonds %>%
#'     ggplot(aes(carat, price, colour = cut)) +
#'     geom_point() +
#'     scale_colour_msand() +
#'     theme_msand()
#'
#' @name scale_manual
NULL

#'
#' @rdname scale_manual
#' @export

scale_colour_msand <- function(...) {
    ggplot2::scale_color_manual(values = unname(palette_msand()))
}

#' @rdname scale_manual
#' @export
scale_color_msand <- scale_colour_msand

#' @rdname scale_manual
#' @export
scale_fill_msand <- function(...) {
    ggplot2::scale_fill_manual(values = unname(palette_msand()))
}
