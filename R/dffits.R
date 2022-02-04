#' dffits!
#'
#' sim
#'
#'
#'

#' @param model 1  model 1
#' @param model 2  model 2
#

#' @export
#'
dffts <- function(mod1, mod2) {
  n <- length(mod1$y)
  dffits(mod1) %>%
    graph(2 * sqrt(mod1$rank / n)) +
    ggplot2::labs(subtitle = "Dffits do Modelo 1", y = "Dffits") +
    dffits(mod2) %>%
    graph(2 * sqrt(mod2$rank / n)) +
    ggplot2::labs(subtitle = "Dffits do Modelo 2", y = "Dffits")
}
