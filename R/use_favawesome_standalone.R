#' Add favawesome_icon Function to a Project
#'
#' If you can't import `favawesome` in your project, you can still use a Font
#' Awesome (\url{https://fontawesome.com}) icon as the favicon (the icon that
#' appears on browser tabs). Calling this function will download the necessary
#' code to add a `favawesome_icon()` function to your project, and will ovewrite
#' the existing file if it already exists, making it easy to update the code.
#' The `favawesome_icon()` function takes the same arguments as [fav()].
#'
#' @return `NULL` invisibly (called for side effect of importing the
#'   `favawesome_icon()` definition). `favawesome_icon()` returns the same value
#'   as [fav()].
#' @export
use_favawesome_standalone <- function() {
  rlang::check_installed(c("usethis", "cli"), "for `use_favawesome_standalone()`.")
  usethis::use_standalone("shinyworks/favawesome", "fav")
  cli::cli_inform(
    "Call {.fn favawesome_icon} in your app to use a Font Awesome icon as your app's favicon.",
    class = "favawesome-message-standalone"
  )
}
