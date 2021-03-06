#' Elegant theme for ggplot2
#'
#' An elegant theme for ggplot2
#' @param base_size : size of the type
#' @param base_family : fonts family
#' @keywords ggplot
#' @export
#' @examples
#' library("ggplot2")
#' N <- 100
#' df <- data.frame(x = rnorm(N))
#' df$y <- 1 + df$x + rnorm(N)
#' ggplot(data = df) +
#'  geom_point(mapping = aes(x = x, y = y)) +
#'  theme_elegant()

theme_elegant <- function(base_size = 12, base_family = "") {
  theme(
    line = element_line(colour = "black", size = 0.5,
                        linetype = 1, lineend = "butt"),
    rect = element_rect(fill = "white",
                        colour = "black", size = 0.5, linetype = 1),
    text = element_text(family = base_family, face = "plain",
                        colour = "black", size = base_size,
                        hjust = 0.5, vjust = 0.5, angle = 0,
                        lineheight = 0.9,
                        margin = margin(t = 0, r = 0, b = 0, l = 0,
                                        unit = "cm"),
                        debug = TRUE),
    axis.text = element_text(size = rel(0.8), colour = "grey50",
                             margin = margin(t = 0, r = 0, b = 0, l = 0, unit = "cm")),
    strip.text = element_text(size = rel(0.8)),
    axis.line = element_line(colour = "grey95"),
    axis.text.x = element_text(vjust = 1),
    axis.text.y = element_text(hjust = 1),
    axis.ticks = element_line(colour = "grey50"),
    axis.title.x = element_text(),
    axis.title.y = element_text(angle = 90),
    axis.ticks.length = unit(0.15, "cm"),
    legend.background = element_blank(),
    legend.margin = unit(0.2, "cm"),
    legend.key = element_rect(fill = NA, colour = "white"),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(size = rel(0.8), face = "plain", hjust = 0),
    legend.title.align = NULL,
    legend.position = "top",
    legend.direction = NULL,
    legend.justification = "left",
    legend.box = NULL,
    panel.background = element_blank(),
    panel.border = element_blank(),
    panel.grid.major = element_line(colour = "grey95"),
    panel.grid.minor = element_line(colour = "grey95", size = 0.25),
    panel.margin = unit(0.25, "lines"),
    strip.background = element_rect(fill = "grey80", colour = NA),
    strip.text.x = element_text(),
    strip.text.y = element_text(angle = -90),
    strip.background = element_blank(),
    plot.background = element_rect(colour = "white"),
    plot.title = element_text(size = rel(1.5),
                              hjust = 0, face = "bold", color = "#3C3C3C"),
    plot.margin = unit(c(1, 1, 0.5, 0.5), "lines"),
    complete = TRUE)
  }
