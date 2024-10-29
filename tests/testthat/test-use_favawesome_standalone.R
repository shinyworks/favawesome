test_that("use_favawesome_standalone checks for packages", {
  skip_if_not_installed("usethis")
  skip_if_not_installed("cli")
  local_mocked_bindings(
    check_installed = function(pkg, reason) {
      rlang::abort("ran check_installed", class = paste(pkg, collapse = "|"))
    },
    .package = "rlang"
  )
  expect_error(
    use_favawesome_standalone(),
    "ran check_installed",
    class = "usethis|cli"
  )
})

test_that("use_favawesome_standalone calls use_standalone", {
  local_mocked_bindings(
    use_standalone = function(repo_spec, file) {
      rlang::abort(
        "ran use_standalone",
        class = paste(repo_spec, file, sep = "|")
      )
    },
    .package = "usethis"
  )
  expect_error(
    use_favawesome_standalone(),
    "ran use_standalone",
    class = "shinyworks/favawesome|fav"
  )
})

test_that("use_favawesome_standalone informs the user", {
  local_mocked_bindings(
    use_standalone = function(repo_spec, file) {
      invisible()
    },
    .package = "usethis"
  )
  expect_message(
    use_favawesome_standalone(),
    class = "favawesome-message-standalone"
  )
})
