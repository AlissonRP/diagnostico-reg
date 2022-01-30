#' dffits!
#'
#' sim
#'
#'
#'

#' @param model 1     model1
#' @param model 2  model 2
#

#' @export
#'
dffts <- function(mod1, mod2) {
  n <- length(mod1$y)
  dffits(mod1) %>%
    graph(2 * sqrt(fitn$rank / n)) +
    labs(subtitle = "Dffits do Modelo NI", y = "Dffits") +
    dffits(mod2) %>%
    graph(2 * sqrt(fitn$rank / n)) +
    labs(subtitle = "Dffits do Modelo G", y = "Dffits")
}
