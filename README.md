
<!-- README.md is generated from README.Rmd. Please edit that file -->

# favawesome

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/favawesome)](https://CRAN.R-project.org/package=favawesome)
[![Codecov test
coverage](https://codecov.io/gh/shinyworks/favawesome/graph/badge.svg)](https://app.codecov.io/gh/shinyworks/favawesome)
[![R-CMD-check](https://github.com/shinyworks/favawesome/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/shinyworks/favawesome/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Easily and flexibly use Font Awesome icons as Shiny favicons. Font
Awesome is a popular set of icons that can be used in web pages.
favawesome provides a simple way to use these icons as favicons in Shiny
applications and other HTML pages.

## Installation

<div class="pkgdown-release">

You can install the latest release of favawesome from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("favawesome")
```

</div>

<div class="pkgdown-devel">

You can install the development version of favawesome from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("shinyworks/favawesome")
```

</div>

## Usage

Add a call to `favawesome::fav()` at the top of your Shiny UI code or
other HTML.

``` r
html_page <- htmltools::tags$html(
  fav("earth-africa", fill = "blue"),
  htmltools::tags$body(
    htmltools::tags$h1("Hello world!"),
    htmltools::tags$p("(on the browser tab)")
  )
)
htmltools::html_print(html_page, viewer = utils::browseURL)
```

## Code of Conduct

Please note that the favawesome project is released with a [Contributor
Code of
Conduct](https://shinyworks.github.io/favawesome/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
