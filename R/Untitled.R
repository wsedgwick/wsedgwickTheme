library(tidyverse)
library(lterdatasampler)



ggplot(data = hbr_maples, aes(x = watershed, y = stem_length)) +
  geom_jitter() +
  facet_wrap(~year) +
  theme_buta()


hbr_maples %>%
  group_by(watershed) %>%
  summarise(mean = mean(stem_length))
