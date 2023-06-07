library(shinytest2)

test_that("{shinytest2} recording: shinytest2-test", {
  app <- AppDriver$new(variant = platform_variant(), name = "shinytest2-test", height = 919, 
      width = 1406)
  app$set_inputs(name = "Marcin")
  app$click("greet")
  app$expect_screenshot()
})



test_that("{shinytest2} recording: shinytest2-test-t", {
  app <- AppDriver$new(name = "shinytest2-test-t", height = 919, width = 1406)
  app$set_inputs(name = "Tomasz")
  app$click("greet")
  app$expect_values()
})

