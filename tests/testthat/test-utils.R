test_that("Compute phylogeny number of nodes, tips and edges correctly.", {
  phylo <- createPhyloCRBD(10, list(lambda=1, mu=0.0))
  expect_equal(numberTips(phylo), 10)
  expect_equal(numberNodesTotal(phylo), 19)
  expect_equal(numberNodesInternal(phylo), 9)
  expect_equal(numberEdges(phylo), numberNodesTotal(phylo) - 1)
})

test_that("Compute height correctly.", {
  phylo <- createPhyloCRBD(15, list(lambda=1, mu=0.0))
  expect_true(getHeight(phylo) > 0)
})

test_that("Identify tips correctly.", {
  phylo <- createPhyloCRBD(10, list(lambda=1, mu=0.0))
  expect_equal(isTip(phylo,1:19), 1:19 <= 10)
})

test_that("Find root correctly.", {
  phylo <- createPhyloCRBD(10, list(lambda=1, mu=0.0))
  expect_equal(getRoot(phylo), 11)
})
