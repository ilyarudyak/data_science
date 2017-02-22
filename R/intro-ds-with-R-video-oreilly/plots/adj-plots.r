# intro
qplot(long, lat, data = texas)
qplot(long, lat, data = texas, geom = "polygon")
qplot(long, lat, data = texas, geom = "polygon", group = group)

library(maps)
counties <- map_data("county")
View(counties)
qplot(long, lat, data = counties, geom = "polygon",
      group = group, fill = group)

qplot(long, lat, data = texas, geom = "polygon", group = group, fill = bin)

# (1) title
tx <- qplot(long, lat, data = texas,
            geom = "polygon", fill = bin, group = group)
tx <- tx + ggtitle("Population of Texas Counties")

# (2) coordinates
tx <- tx + coord_map()

# (3) scales
hd <- qplot(displ, hwy, data =mpg,
            color = cty)
hd + scale_color_gradient(low = "red", high = "yellow")
tx <- tx + scale_fill_brewer(palette = "Oranges")

# (4) themes
tx <- tx + theme_bw()

# (5) axis labels 
tx <- tx + xlab("") + ylab("")

# (6) legend
tx <- tx + scale_fill_brewer(
  palette = "Blues",
  name = "Population",
  labels = c("0 - 999", "1,000 - 9,999",
             "10,000 - 99,999", "100,000 - 999,999",
             "1,000,000+"))











