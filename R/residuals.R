#' residuals
#'
#' a paz interna resid
#'
#'

#' @param model 1     model1
#' @param model 2  model 2
#

#' @export
#'
resid <- function(mod1, mod2) {
  res1 <- rstudent(mod1)
  res2 <- rstudent(mod2)
  res1 %>%
    graph(3) +
    geom_hline(yintercept = 0, linetype = "dotted", color = "deepskyblue2") +
    labs(subtitle = "Residuos do Modelo NI", y = "Resíduo") +
    res2 %>%
    graph(3) +
    geom_hline(yintercept = 0, linetype = "dotted", color = "deepskyblue2") +
    labs(subtitle = "Residuos do Modelo G", y = "Resíduo")
}
