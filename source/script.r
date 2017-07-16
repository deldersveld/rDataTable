source('./r_files/flatten_HTML.r')

############### Library Declarations ###############
libraryRequireInstall("DT");
####################################################

################### Actual code ####################
if (!exists("settings_rdatatable_params_method"))
{
    settings_rdatatable_params_method = "5";
}

if (!exists("settings_rdatatable_params_showColumnFilters"))
{
    settings_rdatatable_params_showColumnFilters = "top";
}

p <- datatable(Values, 
		class = 'cell-border compact stripe hover', 
		rownames = FALSE, 
		filter = settings_rdatatable_params_showColumnFilters, 
		width = "100%", 
		extensions = list('Scroller'), 
		options = list(
			pageLength = settings_rdatatable_params_method,
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
