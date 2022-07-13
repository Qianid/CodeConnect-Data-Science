install.packages("dplyr")
library(dplyr)
install.packages("readr")
library(readr)
library(ggplot2)
boxscore <- read_csv("nba_boxscore.csv")
boxscore %>%
  filter(MP >= 1000) %>% 
  ggplot(aes(x = factor(Age), y = G)) +
  scale_y_continuous(breaks = seq(0, 100, by = 10))+
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  labs(x = "Age of Players",
       y = "Games Played",
       title = "Number of Games Played by the Age")

boxscore <- read_csv("nba_boxscore.csv")
boxscore %>%
  filter(MP >= 1000) %>% 
  ggplot(aes(x = factor(Age), y = G)) +
  scale_y_continuous(breaks = seq(0, 100, by = 10))+
  geom_point() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  labs(x = "Age of Players",
       y = "Games Played",
       title = "Number of Games Played by the Age")



boxscore <- read_csv(file = "nba_boxscore.csv")
MP <- boxscore$MP[1:11237]
mean(MP)
