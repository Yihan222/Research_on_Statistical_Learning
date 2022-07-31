library(ggpubr)
library(ggplot2)

NormalityTests <- function(data)
{
  dataChol <- data[data$oldpeak != 0,]

  ggqqplot(data$age)
  ggsave("images/age_QQ_plot.png")
  ggqqplot(data$chol)
  ggsave("images/chol_QQ_plot.png")
  ggqqplot(data$trestbps)
  ggsave("images/trestbps_QQ_plot.png")
  ggqqplot(data$thalach)
  ggsave("images/thalach_QQ_plot.png")
  ggqqplot(dataChol$oldpeak)
  ggsave("images/oldpeak_QQ_plot.png")

  sink(file = "tests/Shapiro-Wilk-normality-tests.txt")
  sink()

  capture.output( shapiro.test(data$age), file="tests/Shapiro-Wilk-normality-tests.txt", append=TRUE)
  capture.output( shapiro.test(data$chol), file="tests/Shapiro-Wilk-normality-tests.txt", append=TRUE)
  capture.output( shapiro.test(data$trestbps), file="tests/Shapiro-Wilk-normality-tests.txt", append=TRUE)
  capture.output( shapiro.test(data$thalach), file="tests/Shapiro-Wilk-normality-tests.txt", append=TRUE)
  capture.output( shapiro.test(data$oldpeak), file="tests/Shapiro-Wilk-normality-tests.txt", append=TRUE)

}