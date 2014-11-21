context("test for function gday")
test_that("case is ignored", {
	expect_equal(gday("canucks"), gday("CANUCKS"))
})

test_that("always returns logical", {
	expect_is(gday("canucks"), "logical")
})

test_that("asking for the city works just as well", {
	expect_equal(gday("canucks"), gday("Vancouver"))
})

test_that("Seattle does not have a NHL team", {
	expect_error(gday(team="Seattle"))
})

test_that("Vancouver Canucks had a game against Nashville Predators on 2014-11-02", {
	expect_true(gday(team = "canucks",   date = "2014-11-02"))
	expect_true(gday(team = "predators", date = "2014-11-02"))
})

test_that("Vancouver Canucks had no game on 2014-11-16", {
	expect_false(gday(team = "canucks",   date = "2014-11-16"))
})


test_that("Wrong date type throws error", {
	expect_error(gday("Bruins", date = "201-411-12"), "Error")
})


context("test for internet_connection")
test_that("always returns logical for internet_connection", {
	expect_is(internet_connection(), "logical")
})

context("test for check_date")
test_that("always returns logical for check_date", {
	expect_is(check_date(), "logical")
})

test_that("No 29th in Feb of 2001", {
	expect_false(check_date("2001-02-29"))
})

context("test for scores")
test_that("always returns date.frame for check_date", {
	expect_is(scores(), "data.frame")
})

test_that("the return values have enough information", {
	expect_equal(names(scores()), c("game_place", "home", "away",
																	"home_score", "away_score", "completed"))
})

test_that("completed alway return logic",{
	expect_is(scores()$completed, "logical")
})








