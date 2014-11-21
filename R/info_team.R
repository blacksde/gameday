#' Team information
#'
#' This function returns the information of a team or a city
#'
#' You know then problem: You're in your office writing R code and
#' suddenly your friend asks you the name of the arena of a NHL team.
#' Before you know it you just wasted 15 minutes browsing the lastest
#' news on your favorite hockey webpage.
#' Suffer no more! You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param team
#' @return data frame with information about arean, team, lat and long
#' @keywords misc
#' @note case in \code{team} is ignored
#' @export
#' @examples
#' info_team()
#' info_team("Bruins")



info_team<-function(team="canucks"){
	if(check_team(team) == 0){
		print("no such team")
		return(0)
	}
	return(arena_team[check_team(team),])
}
