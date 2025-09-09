# Load Packages -----

library(brandr)
library(ggplot2)
library(here)
library(knitr)
library(ragg)
library(showtext)
library(sysfonts)

# Set Options -----

options(scipen = 999)

# Set `brandr` -----

options(BRANDR_BRAND_YML = here("_brand.yml"))

brandr_options <- list(
  "BRANDR_COLOR_SEQUENTIAL" =
    get_brand_color(c("primary", "tertiary")),
  "BRANDR_COLOR_DIVERGING" =
    get_brand_color(c("primary", "white", "tertiary")),
  "BRANDR_COLOR_QUALITATIVE" = c(
    get_brand_color("primary"),
    get_brand_color("secondary"),
    get_brand_color("tertiary"),
    get_brand_color("black")
  )
)

for (i in seq_along(brandr_options)) options(brandr_options[i])

# Set `showtext` -----

font_paths(here("ttf"))

font_add(
  family = "poppins",
  regular = here("ttf", "poppins-regular.ttf"),
  bold = here("ttf", "poppins-bold.ttf"),
  italic = here("ttf", "poppins-italic.ttf"),
  bolditalic = here("ttf", "poppins-bolditalic.ttf"),
  symbol = NULL
)

showtext_auto()

# Set `ggplot2` -----

theme_set(
  theme_bw() +
    theme(
      text = element_text(
        color = get_brand_color("black"),
        family = "poppins",
        face = "plain"
      ),
      panel.background = element_rect(fill = "transparent"),
      plot.background = element_rect(
        fill = "transparent", color = NA
      ),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      legend.background = element_rect(fill = "transparent"),
      legend.box.background = element_rect(
        fill = "transparent", color = NA
      ),
      legend.frame = element_blank()
    )
)
