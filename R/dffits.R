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
dffts <- function(mod1, mod2, subtitle1 = "Dffits do Modelo 1", subtitle2 = "Dffits do Modelo 2") {
  n <- length(mod1$y)
  dffits(mod1) %>%
    graph(2 * sqrt(mod1$rank / n)) +
    ggplot2::labs(subtitle = subtitle1, y = "Dffits") +
    dffits(mod2) %>%
    graph(2 * sqrt(mod2$rank / n)) +
    ggplot2::labs(subtitle = subtitle2, y = "Dffits")
}
