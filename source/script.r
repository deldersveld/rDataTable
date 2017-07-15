source('./r_files/flatten_HTML.r')

############### Library Declarations ###############
libraryRequireInstall("DT");
####################################################

################### Actual code ####################
p <- datatable(Values, 
		class = 'cell-border compact stripe hover', 
		rownames = FALSE, 
		filter = 'top', 
		width = "100%", 
		extensions = list('Scroller'), 
		options = list(
			pageLength = 5,
			lengthMenu = c(5, 10, 25, 50, 100, 1000),
			autoWidth = FALSE,
			scrollX = "100%",
			scrollY = "50vh",
			scroller = TRUE
		)
	)
####################################################

############# Create and save widget ###############
internalSaveWidget(p, 'out.html');
####################################################
