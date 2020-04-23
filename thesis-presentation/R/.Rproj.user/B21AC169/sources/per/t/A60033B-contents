rm(list = ls())

library(ggplot2)
library(tidyverse)
library(BenfordTests)

theta_b1 <- map_dbl(1:9, function(x){log10(1+1/(x))})
theta_b2 <- map_dbl(0:9, function(x){sum(log10(1+1/(10*(1:9)+x)))})
theta_b3 <- c(.1017, .1013, .1009, .1005, .1001, .0997, .0994, .0990, .0986, .0982) #berger, hill 2015 
theta_b4 <- c(.1001, .1001, .1000, .100, .1000, .0999, .0999, .0999, .0998, .0998)

t1 <- tibble(
  digit = 0:9,
  prob = c(0, theta_b1),
  bl = "First digit"
)

t2 <- tibble(
  digit = 0:9,
  prob = theta_b2,
  bl = "Second digit"
)

t3 <- tibble(
  digit = 0:9,
  prob = theta_b3,
  bl = "Third digit"
)

t4 <- tibble(
  digit = 0:9,
  prob = theta_b4,
  bl = "Fourth digit"
)

df <- rbind(t1, t2)
df2 <- rbind(t1, t2, t3, t4)
df2$bl <- factor(df2$bl, levels = c("First digit", "Second digit", "Third digit", "Fourth digit"))

ggplot(data = df, mapping = aes(factor(digit), prob)) +
         geom_bar(stat = "identity") + 
  facet_grid(~bl) +
  labs(
  #  title = "Benford's law probabilities",
    x = "Digit",
    y ="Probability"
  ) 

ggsave("benford.png", last_plot())

ggplot(data = df2, mapping = aes(factor(digit), prob)) +
  geom_bar(stat = "identity") + 
  facet_grid(~bl) +
  labs(
    #  title = "Benford's law probabilities",
    x = "Digit",
    y ="Probability"
  ) 

ggsave("benford2.png", last_plot())




