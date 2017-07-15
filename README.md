# rDataTable (preview)  

R custom visual for Microsoft Power BI  

*version 1.0.0*  
**David Eldersveld**  

Based on the [DT package](https://rstudio.github.io/DT/), **rDataTable** is an interactive Power BI **R** custom visual that helps you easily explore table data. rDataTable is currently in preview and is only available using the "import as file" option, not through the Office Store.

[**Download rDataTable *(preview)***](https://github.com/deldersveld/rDataTable/raw/master/packaged-versions/rDataTable-1.0.0.pbiviz)
 

![](https://github.com/deldersveld/rDataTable/raw/master/images/rDataTable.PNG)

  
## Functionality  
Some of the benefits of rDataTable include:  

* **Search** 
  * Global search field filters data across all columns  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/GlobalSearch.PNG)  
  
* **Pagination**
  * Use "Show # of entries" to choose between 5, 10, 25, 50, 100, or 1000 records to display per page  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ShowEntries.PNG)  
  
* **Column-level filters**
  * Conveniently filter column values using the option below each column header  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ColumnFilters1.PNG)  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ColumnFilters2.PNG)  
  ![](https://github.com/deldersveld/rDataTable/raw/master/images/ColumnFilters3.PNG)  

**NOTES:**  
* rDataTable currently does not provide any **Format** options.
* User-defined selections and filters are not preserved between sessions. When used in a report, the initial view will appear with all of the data specified under Values (defaults to 5 entries to page, no column filters, no search value). This limitation makes it a good exploratory but not necessarily a good explanatory visual.
* Optimal visual height is **415px or greater**.

## Environments  

### Power BI Desktop
rDataTable requires the **htmlwidgets** and **DT** packages installed in your local R environment to work with Power BI Desktop.

### Power BI Service
All required packages are currently available in the Power BI Service. rDataTable runs in Power BI Service and has been tested in Chrome, Firefox, and Edge.

### Power BI Mobile
rDataTable runs as a fully interactive visual in the Mobile app and has been tested in iOS (Android testing still needed).  
![](https://github.com/deldersveld/rDataTable/raw/master/images/iOS0.jpg)   
![](https://github.com/deldersveld/rDataTable/raw/master/images/iOS1.jpg)   
![](https://github.com/deldersveld/rDataTable/raw/master/images/iOS2.jpg)

### Embedded or Publish to Web
This functionality is not available to any R Visuals in Power BI as of July 2017.
  
  
## Develop!		
rDataTable is an open-source project available under the MIT license. Feel free to fork, develop, and submit a pull request if you have changes or fixes.  		
		
Particular areas of need include:  		
* Adding Format options so that users can customize items such as default records per page, etc.		
* Determining if there is a way to easily obtain Power BI's data formats such as Currency and Percentage and apply that in R visuals like rDataTable		
* Error handling		
* Testing on Safari and Android  
 
  
## Support
rDataTable is provided "as-is" with no direct developer support. If you find an issue with the visual, please log it here on GitHub. Please note that logging an issue is no guarantee that your issue will be resolved.
