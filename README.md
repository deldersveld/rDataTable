# R DataTable

R custom visual for Microsoft Power BI  

*version 1.1.0*  
**David Eldersveld**  

Based on the [DT package](https://rstudio.github.io/DT/), **R DataTable** is an interactive Power BI **R** custom visual that helps you easily explore table data.  

[**Download R DataTable from AppSource***](https://appsource.microsoft.com/en-us/product/power-bi-visuals/WA104381459?tab=Overview)
 

![](https://github.com/deldersveld/rDataTable/raw/master/images/rDataTable.PNG)

  
## Functionality  
Some of the benefits of R DataTable include:  

* **Search** 
  * Global search field to filter data across all columns  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/GlobalSearch.PNG)  
  
* **Pagination**
  * Use "Show # of entries" to choose between 5, 10, 25, 50, 100, or 1000 records to display per page  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ShowEntries.PNG)  
  
* **Column-level filters**
  * Conveniently filter column values using the option below each column header  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ColumnFilters1.PNG)  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ColumnFilters2.PNG)  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ColumnFilters3.PNG)  
  
## Format Options
Under *Format*, a section called *Visual Settings* contains various format options:
* **Initial Entries** - Choose the default number of entries/records per page
* **Filters** - Choose how to display the column filters (Top, Bottom, None)

![](https://github.com/deldersveld/rDataTable/raw/master/images/FormatOptions.PNG)  


## NOTES
* User-defined selections and filters are not preserved between sessions. When used in a report, the initial view will appear with all of the data specified under Values (defaults to 5 entries to page, no in-visual filters applied, no search value). This limitation makes it a good exploratory but not necessarily a good explanatory visual.
* Optimal visual height is **415px or greater**.

## Environments  

### Power BI Desktop
R DataTable requires the **htmlwidgets** and **DT** packages installed in your local R environment to work with Power BI Desktop.

### Power BI Service
All required packages are currently available in the Power BI Service. R DataTable runs in Power BI Service and has been tested in Chrome, Firefox, and Edge.

### Power BI Mobile
R DataTable runs as a fully interactive visual in the Mobile app and has been tested in iOS (Android testing still needed).  
![](https://github.com/deldersveld/rDataTable/raw/master/images/iOS0.jpg)   
![](https://github.com/deldersveld/rDataTable/raw/master/images/iOS1.jpg)   
![](https://github.com/deldersveld/rDataTable/raw/master/images/iOS2.jpg)

### Embedded or Publish to Web
This functionality is not available to any R Visuals in Power BI as of July 2017.
  
  
## Develop!		
R DataTable is an open-source project available under the MIT license. Feel free to fork, develop, and submit a pull request if you have changes or fixes.  		
		
Particular areas of need include:  		
* Adding additional Format options so that users can customize items.		
* Determining if there is a way to easily obtain Power BI's data formats such as Currency and Percentage and apply that in R visuals like rDataTable		
* Error handling		
* Testing on Safari and Android  
 
  
## Support
R DataTable is provided "as-is" with no direct developer support. If you find an issue with the visual, please log it here on GitHub. Please note that logging an issue is no guarantee that your issue will be resolved.


## Changelog
* 1.1.0 - October 10, 2017
  * Corrected issue where unicode characters were not appearing correctly
* 1.0.1 - July 15, 2017
  * Added Format options for Initial Entries and Filters
  * Adjusted Dependencies.json
* 1.1.0 
  * Packaged for Microsoft AppSource
  * Adjusted Dependencies.json
