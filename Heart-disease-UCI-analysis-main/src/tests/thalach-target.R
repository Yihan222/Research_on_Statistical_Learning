library(ggplot2)

thalachTarget <- function(data){
  x <- as.numeric(data$thalach)
  y <- as.numeric(data$target)
  
  cor.test(x, y, method="kendall", alternative="less")
  
  ggplot(data, aes(target, thalach)) +
    geom_boxplot() +
    ggtitle("Maximum pulse box diagram in diagnostic groups") + 
    labs(x="Probability of heart disease", y="Maximum pulse during the stress test [bpm]")
  
  ggsave("images/thalach-target.png")
  
}
