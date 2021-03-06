library(knmiR)
context("Testing KnmiData class")

test_that("class methods work", {
  quakes <- Earthquakes("induced", period = "2015", path = NULL)
  quakesSub <- quakes[1 : 10]
  expect_equal_to_reference(Call(quakes), "./referenceOutput/classCall.rds")
  expect_equal_to_reference(License(quakes),
      "./referenceOutput/classLicense.rds")
  expect_equal_to_reference(Citation(quakes),
      "./referenceOutput/classCitation.rds")
  expect_equal_to_reference(Description(quakes),
      "./referenceOutput/classDescription.rds")
  expect_match(MetaData(quakes), "Downloaded via knmiR package version:*")
  expect_warning(Call(quakesSub),
      "* was modified before. No call available.")
  expect_warning(License(quakesSub),
      "* was modified before. No license available.")
  expect_warning(Citation(quakesSub),
      "* was modified before. No citation available.")
  expect_warning(Description(quakesSub),
      "* was modified before. No description available.")
  expect_warning(MetaData(quakesSub),
      "* was modified before. No metadata available.")
  expect_warning(Call("test"),        "*not defined for class*")
  expect_warning(License("test"),     "*not defined for class*")
  expect_warning(Citation("test"),    "*not defined for class*")
  expect_warning(Description("test"), "*not defined for class*")
  expect_warning(MetaData("test"),    "*not defined for class*")
})
