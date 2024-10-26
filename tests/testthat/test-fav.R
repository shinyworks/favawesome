test_that("fav generates the expected html", {
  test_result <- fav("earth-africa", fill = "blue")
  expect_s3_class(test_result, "shiny.tag")
  expect_snapshot({
    htmltools::doRenderTags(test_result)
  })
})
