# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

bfaggtheme_copyrightnotice <- function() {
  print("Package developed by Benjamin Mazzotta for BFA Global LLC. \nCopyright 2020 BFA Global LLC all rights reserved.")
}
#
# library(ggplot2)
# library(ggthemes)
# library(extrafont)
# library(ggpubr)
# theme_set(theme_hc()) +

theme_bfa <- function() {
  invisible(try(extrafont::loadfonts(), silent=TRUE))
  ggplot2::theme_set(ggthemes::theme_economist_white(gray_bg = FALSE)) +
  # theme_set(theme_fivethirtyeight()) +
  ggplot2::theme_update(text= ggplot2::element_text(family="Century Gothic", color="#333333"),
               panel.grid.major.y = ggplot2::element_line(size=.1, colour = "#EBEBEB"),
               axis.text.x = ggplot2::element_text(size=8, color="grey15",  margin=ggplot2::margin(8,8,8,8, "pt"), face="bold"),
               axis.text.y = ggplot2::element_text(size=8, color="grey15", margin=ggplot2::margin(8,0,8,0, "pt"), face="bold"),
               axis.title.x = ggplot2::element_text(size=10, color="grey15", margin=ggplot2::margin(8,8,8,8, "pt")),
               axis.title.y = ggplot2::element_text(size=10, color="grey15", margin=ggplot2::margin(8,8,8,8, "pt")),
               legend.text = ggplot2::element_text(size=8, color="grey15", face="bold"),
               strip.text.y = ggplot2::element_text(size=12, color="grey15"),
               legend.margin = ggplot2::margin(12,12,12,12, "pt"),
               legend.key.height = ggplot2::unit(12, "pt"),
               legend.key.width = ggplot2::unit(12, "pt"),
               plot.caption = ggplot2::element_text(hjust=0, size=8, color="#575757"),
               plot.title = ggplot2::element_text(size=24, hjust=0, margin=ggplot2::margin(12,0,24,0), face="bold"),
               plot.subtitle = ggplot2::element_text(size=10, color="#575757", hjust=0, margin=ggplot2::margin(0,0,24,0)),
               legend.position="bottom",
               legend.justification = "left",
               plot.title.position = "plot",
               plot.caption.position="plot",
               plot.margin = ggplot2::margin(24, 18, 18, 18, "pt")
  )

# library(grDevices)
bfa_colors <<- c(grDevices::rgb(2/255, 175/255, 170/255), # Primary
               grDevices::rgb(252/255, 190/255, 14/255), # Amber
               grDevices::rgb(217/255, 88/255, 19/255), # Orange
               grDevices::rgb(206/255, 233/255, 235/255), # Supporting
               grDevices::rgb(87/255, 87/255, 87/255), # Neutral 1
               grDevices::rgb(157/255, 157/255, 156/255), # Neutral 2
               grDevices::rgb(198/255, 198/255, 198/255), # Neutral 3
               grDevices::rgb(235/255, 235/255, 235/255) # Neutral 4
)

bfa_palette <<- function(n_colors=3) {ggpubr::get_palette(bfa_colors[c(1:3)], n_colors)}
bfa_rag4 <<- bfa_colors[c(1:3, 5)]
bfa_primarygray <<- bfa_colors[c(1,5:8)]
bfa_ambergray <<- bfa_colors[c(2,5:8)]
bfa_orangegray <<- bfa_colors[c(3,5:8)]
}
