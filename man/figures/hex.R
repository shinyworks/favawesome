# This requires extra packages, but I'm not including them in suggests because
# nobody should ever need to do this.

# install.packages("hexSticker")
# install.packages("usethis")
# install.packages("sysfonts")
sysfonts::font_add_google("Varela Round")
png_path <- tempfile(fileext = ".png")
fontawesome::fa_png(
  "icons", fill = "#338500",
  file = png_path
)
hexSticker::sticker(
  png_path,
  package = "favawesome",
  filename = "man/figures/logo.png",
  s_x = 1,
  h_fill = "#FFFFFF",
  h_color = "#338500",
  p_color = "#338500",
  p_size = 20,
  p_family = "Varela Round"
)
# usethis::use_logo("man/figures/logo.png")
