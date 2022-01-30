#' graphh

graph <- function(df, l) {
  df %>%
    as_tibble() %>%
    ggplot(aes(as.numeric(row.names(df %>% as_tibble())), value)) +
    geom_point(color = "red") +
    geom_hline(yintercept = l, linetype = "dashed", color = "navy") +
    geom_hline(yintercept = -l, linetype = "dashed", color = "navy") +
    labs(x = "Índice")
}
