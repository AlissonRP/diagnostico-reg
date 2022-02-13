#' cook
#'
#' Do you smell what The Rock is cooking?
#'
#'

#' @param model 1     model1
#' @param model 2  model 2
#

#' @export
#'
cook <- function(mod1, mod2) {
  n <- length(mod1$y)

  if (missing(mod2)) {
    cooks.distance(mod1) %>%
      graph(4 / (n - mod1$rank)) +
      ggplot2::labs(subtitle = "Distância do Modelo 1", y = "Dis Cook")
  } else {
    cooks.distance(mod1) %>%
      graph(4 / (n - mod1$rank)) +
      ggplot2::labs(subtitle = "Distância do Modelo 1", y = "Dis Cook") +
      cooks.distance(mod2) %>%
      graph(4 / (n - mod2$rank)) +
      ggplot2::labs(subtitle = "Distância do Modelo 2", y = "Dis Cook")
  }
}
