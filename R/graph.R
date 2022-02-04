#' graph

graph <- function(df, l) {
  df %>%
    dplyr::as_tibble() %>%
    ggplot2::ggplot(ggplot2::aes(as.numeric(row.names(df %>% dplyr::as_tibble())), value)) +
    ggplot2::geom_point(color = "red") +
    ggplot2::geom_hline(yintercept = l, linetype = "dashed", color = "navy") +
    ggplot2::geom_hline(yintercept = -l, linetype = "dashed", color = "navy") +
    ggplot2::labs(x = "Índice")
}
