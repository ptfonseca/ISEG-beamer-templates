
library("truncnorm")
library("ggplot")
library("tidyverse")
library("cowplot")

theta_b1 <- map_dbl(1:9, function(x){log10(1+1/(x))})
theta_b2 <- map_dbl(0:9, function(x){sum(log10(1+1/(10*(1:9)+x)))})

x <- seq(0, 1,.01)
y <- dtruncnorm(x, a=0, b=1, mean = .3, sd = 1)

plot(x,y)
abline(v = .31)




df <- tibble(
  theta = seq(0, 1,.01)
)

for(j in theta_b1){

  assign(paste("plot", which(theta_b1 == j), sep=""),
    ggplot(data = df, mapping = aes(x = theta)) +
      stat_function(fun = dtruncnorm, geom="line", args=list(a=0, b=1, mean = j, sd = 1)) + 
      xlim(0, 1) + 
      geom_vline(xintercept = j, linetype = "longdash", color = "blue" ) + 
      labs(
        title = expression("Prior for" ~ theta),
        x = expression(theta),
        y = "Density"
      )
    )
  
}

plot_grid(plot1, plot2, plot3, plot4, plot5, plot6, plot7, plot8, plot9)
