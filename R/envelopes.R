#' envelope simulado
#'
#' a paz interna resid
#'
#'

#' @param model 1     model1
#' @param model 2  model 2
#

#' @export
#'
envelope <- function(mod1, mod2, subtitle1 = "Dffits do Modelo 1", subtitle2 = "Dffits do Modelo 2") {
  g1 <- hnp::hnp(mod1, resid.type = "deviance", halfnormal = F)
  G1 <- with(g1, data.frame(x, lower, upper, median, residuals))
  g2 <- hnp::hnp(mod2, resid.type = "deviance", halfnormal = F)
  G2 <- with(g2, data.frame(x, lower, upper, median, residuals))

  return(G1 %>%
    env() +
    ggplot2::labs(subtitle = subtitle1) +
    G2 |>
    env() +
    ggplot2::labs(subtitle = subtitle2))
}
