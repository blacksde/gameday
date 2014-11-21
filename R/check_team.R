check_team<-function(team){
	for(i in 1:nrow(arena_team)){
		if(grepl(team,arena_team$team[i],ignore.case=TRUE)) return(i)
	}
	return(0)
}
