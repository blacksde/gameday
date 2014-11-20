#' What is the score?
#'
#' This function returns the score of given date
#'
#' You know then problem: You're in your office writing R code and
#' suddenly have the urge to check what the scores of NHL games are today.
#' Before you know it you just wasted 15 minutes browsing the lastest
#' news on your favorite hockey webpage.
#' Suffer no more! You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param team
#' @return a date frame with home team, away team, home_score and away_score.
#' @keywords misc
#' @export
#' @examples
#' scores()
#' scores("2014-11-19")
scores<-function(date = Sys.Date()){
	url <- paste0("http://live.nhle.com/GameData/GCScoreboard/",
								as.Date(date), ".jsonp")
	raw <- RCurl::getURL(url)
	json <- gsub('([a-zA-Z_0-9\\.]*\\()|(\\);?$)', "", raw, perl = TRUE)
	data <- jsonlite::fromJSON(json)$games
	results<-with(data,
			 data.frame(game_place = htn,
			 					 home = paste(htn, htcommon),
			 					 away = paste(atn, atcommon),
			 					 home_score = hts,
			 					 away_score = ats,
			 					 completed = rl))
	return(results)
}

