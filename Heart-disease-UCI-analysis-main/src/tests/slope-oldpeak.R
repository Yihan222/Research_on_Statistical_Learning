library(ggplot2)

slopeOldpeak <- function(data){
  
  data <- data[data$oldpeak != 0,]
  
  x <- as.numeric(data$slope)
  y <- as.numeric(data$oldpeak)
  
  cor.test(x, y, method="kendall", alternative="less")
  
  
  ggplot(data, aes(slope, oldpeak)) +
    geom_boxplot() +
    ggtitle("Slope v.s. Oldpeak") + 
    labs(x="Slope", y="Oldpeak [mV]")
  
  ggsave("images/oldpeak-slope.png")
  
  
  ggplot(data, aes(oldpeak, fill=slope)) + 
    geom_density(alpha=0.8) + 
    facet_grid(rows = vars(slope))
  
  ggsave("images/oldpeak-slope-v2-extra-no-description.png")
}
