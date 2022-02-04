env <- function(envlp) {
  envlp %>%
    ggplot2::ggplot(ggplot2::aes(x)) +
    ggplot2::geom_point(ggplot2::aes(y = residuals)) +
    ggplot2::geom_line(ggplot2::aes(y = lower)) +
    ggplot2::geom_line(ggplot2::aes(y = upper)) +
    ggplot2::geom_line(ggplot2::aes(y = median), linetype = "dashed")
}
