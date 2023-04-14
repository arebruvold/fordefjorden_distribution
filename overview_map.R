
  fordoverview <- get_stamenmap(
    center = c(5.430, 4.986),
    maptype = "terrain-background",
    zoom = 4,
    bbox = c(
      left = 3,
      bottom = 57.5,
      right = 15,
      top = 68
    )
  ) %>%
    ggmap() + theme_bw() +
  theme(
    panel.background = element_rect(fill = "transparent"), # bg of the panel
    plot.background = element_rect(fill = "transparent", color = NA), # bg of the plot
    legend.background = element_rect(fill = "transparent"), # get rid of legend bg
    legend.box.background = element_rect(fill = "transparent"), # get rid of legend panel bg
    axis.ticks = element_blank(),
    axis.text = element_blank(),
    axis.title.x=element_blank(),
    axis.title.y=element_blank(),
    axis.text.x = element_blank(),
    panel.grid.major = element_line(
      size = 0.1, linetype = "solid",
      colour = "grey"
    ),
    panel.grid.minor = element_line(
      size = 0.05, linetype = "dotted",
      colour = "grey"
    ),
    strip.background = element_rect(
      color = "black", fill = "grey", linetype = "solid"
    ),
    strip.text.x = element_text(size = 9, colour = "black"),
    strip.text.y = element_text(size = 9, colour = "black")
  )
  
  fordoverview

  ggsave(fordoverview, filename = "fordoverview.png", bg = "transparent", width = 1.25, height = 1.25)
  
  get_stamenmap(
    center = c(5.430, 4.986),
    maptype = 'terrain',
    bbox = c(
      left = 4.83,
      bottom = 61.4,
      right = 6.46,
      top = 61.63
    )
  ) %>% 
    
    ggmap() +
    geom_point(data = tibble(
      locations = c('inner', 'outer', 'mine'),
      locs = c('Inner','Outer', 'Mine'),
      lon = c(5.430, 4.986, 5.446),
      lat = c(61.480, 61.568, 61.488)
    ) %>% filter(locs != 'Mine'),
    aes(x = lon, y = lat),
    size = 5,
    color = 'blue',
    shape = 18) +
    geom_point(data = tibble(
      locations = c('inner', 'outer', 'mine'),
      locs = c('Inner','Outer', 'Mine'),
      lon = c(5.430, 4.986, 5.446),
      lat = c(61.480, 61.568, 61.488)
    ) %>% filter(locs == 'Mine'),
    aes(x = lon, y = lat),
    size = 3,
    shape = 17) +
    geom_shadowtext(
      data = tibble(
        locations = c('inner', 'outer', 'mine'),
        locs = c('Inner','Outer', 'Planned mine'),
        lon = c(5.438, 4.998, 5.520),
        # lon = c(5.430, 4.986, 5.446),
        lat = c(61.468, 61.557, 61.496)
      ),
      aes(label = locs),
      color = 'black',
      bg.color = "white",
      nudge_x = 0.05,
      size = 3
    )+theme_bw()+labs(x="Longitude [°E]",y="Latitude [°N]")+
    scale_x_continuous(breaks = seq(4.7, 6.3, 0.1),
                       limits = c(4.9, 6.3))
  
  ggsave(filename = "out/fig1-map-fordefjorden.tiff", width = 15, height = 10, device='tiff', dpi=300, units = "cm",
         bg = "transparent")
  