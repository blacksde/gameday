check_date<-function(date = Sys.Date()){
	tryCatch({as.Date(date); TRUE},
					 error = function(err) FALSE)
}
