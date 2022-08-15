#' msand themes for ggplot2.
#'
#' The `theme_msand()` function creates a custom theme using msand colors.
#'
#' @inheritParams ggplot2::theme_grey
#'
#' @seealso [scale_manual()]
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
#' @name theme_msand
NULL

#' @rdname theme_msand
#' @export
#' @importFrom ggplot2 `%+replace%`
theme_msand <- function(base_size = 11, base_family = "") {

    # msand colours
    black      <- "#18191A"
    light_grey <- "#999999"
    dark_grey  <- "#545454"
    sand       <- "#fad25a"
    white      <- "#FFFFFF"
    strip      <- "#2C2C2C"

    # Starts with theme_grey and then modify some parts
    ggplot2::theme_grey(base_size = base_size, base_family = base_family) %+replace%
        ggplot2::theme(

            # Base Inherited Elements
            line               =  ggplot2::element_line(colour = dark_grey, size = 0.5, linetype = 1,
                                                        lineend = "butt"),
            rect               =  ggplot2::element_rect(fill = light_grey, colour = light_grey,
                                                        size = 0.5, linetype = 1),
            text               =  ggplot2::element_text(family = base_family, face = "plain",
                                                        colour = black, size = base_size,
                                                        lineheight = 0.9, hjust = 0.5, vjust = 0.5, angle = 0,
                                                        margin = ggplot2::margin(), debug = FALSE),

            # Axes
            axis.line          = ggplot2::element_blank(),
            axis.text          = ggplot2::element_text(size = ggplot2::rel(0.8)),
            axis.ticks         = ggplot2::element_line(color = dark_grey, size = ggplot2::rel(1/3)),
            axis.title         = ggplot2::element_text(size = ggplot2::rel(1.0)),

            # Panel
            panel.background   = ggplot2::element_rect(fill  = white, color = NA),
            panel.border       = ggplot2::element_rect(fill = NA, size = ggplot2::rel(1/2), color = dark_grey),
            panel.grid.major   = ggplot2::element_line(color = dark_grey, size = ggplot2::rel(1/3)),
            panel.grid.minor   = ggplot2::element_line(color = dark_grey, size = ggplot2::rel(1/3)),

            # Legend
            legend.background  = ggplot2::element_blank(),
            legend.key         = ggplot2::element_rect(fill = white, color = NA),
            legend.position    = "bottom",

            # Strip (Used with multiple panels)
            strip.background   = ggplot2::element_rect(fill = strip, color = dark_grey),
            strip.text         = ggplot2::element_text(color = white, size = ggplot2::rel(0.8),
                                                       margin = ggplot2::margin(t = 5, b = 5)),

            # Plot
            plot.title         = ggplot2::element_text(colour = sand, size = ggplot2::rel(1.2), hjust = 0,
                                                       margin = ggplot2::margin(t = 0, r = 0, b = 4, l = 0,
                                                                                unit = "pt"),
                                                       face = "bold"),
            plot.subtitle      = ggplot2::element_text(size = ggplot2::rel(0.9), hjust = 0,
                                                       margin = ggplot2::margin(t = 0, r = 0, b = 3, l = 0,
                                                                                unit = "pt")),
            plot.background    = ggplot2::element_rect(fill = white, colour = white),

            # Complete theme
            complete = TRUE
        )
}
