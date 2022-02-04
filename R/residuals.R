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
    ggplot2::geom_hline(yintercept = 0, linetype = "dotted", color = "deepskyblue2") +
    ggplot2::labs(subtitle = "Residuos do Modelo 1", y = "Resíduo") +
    res2 %>%
    graph(3) +
    ggplot2::geom_hline(yintercept = 0, linetype = "dotted", color = "deepskyblue2") +
    ggplot2::labs(subtitle = "Residuos do Modelo 2", y = "Resíduo")
}

mod1 = glm(Species ~. ,data = iris, family = 'binomial')

mod2 = glm(Species ~Sepal.Length+Petal.Length ,data = iris, family = 'binomial')
resid(mod1,mod2)


