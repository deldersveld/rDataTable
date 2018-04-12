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

if (!exists("settings_rdatatable_params_limitDecimalPlaces"))
{
    settings_rdatatable_params_limitDecimalPlaces = 2;
}

idx <- sapply(Values, class)=="numeric"
Values[, idx] <- lapply(Values[, idx], formatC, digits = as.numeric(settings_rdatatable_params_limitDecimalPlaces), format = "f")

p <- datatable(Values, 
		class = 'cell-border compact stripe hover', 
		rownames = FALSE, 
		filter = settings_rdatatable_params_showColumnFilters, 
		width = "100%", 
		height = "95vh",
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
	
# adjust padding to use entire container
p$sizingPolicy$browser$padding = 0
	
####################################################

############# Create and save widget ###############
internalSaveWidget(p, 'out.html');
####################################################
