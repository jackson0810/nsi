<cfsilent>
	<cfquery name="corpNews" datasource="nsiwebdata09">
		SELECT		newsID, title, shortDesc, longDesc, dateUpdated, releaseDate
		FROM		corpNews
		ORDER BY	releaseDate	DESC
	</cfquery>	
</cfsilent>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>News</title>
 		<link rel="Shortcut Icon" href="/favicon.ico" />
		<link rel="icon" href="/favicon.ico" type="image/x-icon">
		<link rel="alternate" type="application/rss+xml" title="RSS" href="/views/newsFeed.rss" />
		
		<link rel="stylesheet" media="screen" href="/css/template.css" />		
		<script type="text/javascript" src="/scripts/jquery/jquery-1.3.2.min.js"></script>
		
		<!--JQuery Menu-->
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.jdMenu.js"></script>
		<link type="text/css" rel="stylesheet" href="/scripts/jquery/jdMenu/jquery.jdMenu.css"  />
		
		<!-- table sorting and paging -->
		<script type="text/javascript" src="/scripts/jquery/tableSorter/jquery.tablesorter.min.js"></script>
		<link rel="stylesheet" href="/scripts/jquery/tableSorter/themes/blue/style.css" type="text/css" media="screen" />
	
		<!--Table Highlighting-->
		<script type="text/javascript" language="javascript" src="/scripts/jquery/colorize/colorize.js" ></script>
		 
		<!--// load the qForm JavaScript API //-->
		<script src="/scripts/qForms/lib/qforms.js"></script>
		<script language="JavaScript">
			qFormAPI.setLibraryPath("/scripts/qForms/lib/");
			qFormAPI.include("validation");
			qFormAPI.include("functions", null, "12");
		</script>
		<!--// [ end ] initialize all extension libraries  //-->
		
		<script type="text/javascript">
		$(document).ready(function() {
			$("##corpNewsList")
				.tablesorter({widthFixed: true, widgets: ['zebra'],headers: {0: {sorter:false}, 9: {sorter:false}}})
						
    	});
		</script>
		</cfoutput>
</head>
<body>
	<table class="wrapper" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td valign="middle"><img src="/images/logo.gif"></td>
			<!---Deleted Image<cfoutput><td><a href="/views/documents/GolfTourneyFlyer2013.pdf" target="_blank"><img src="/images/NSIGolfTourney.png" border="0" width="125"></a></td></cfoutput>--->
			<td align="right" valign="middle" class="warfighter">
				<em>Supporting the Warfighter!</em>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<cfinclude template="/views/layout/new_navigation.cfm" />
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">

<!---DO NOT REMOVE THE FOLLOWING LINE OF CODE--->
<!---END--->
<!---BEGIN EDITABLE REGION--->
<script type="text/javascript">
	document.title = "Naval Systems, Inc. - Corporate News Item List";
</script>

<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="15%" valign="top" bgcolor="#6699CC" style="padding: 0 5px 0 5px;">
			<div align="center">
				<cfoutput>
				<img src="/images/0430v22.jpg" width="125" /><br/><br/>
				<img src="/images/h1_flight.jpg" width="125" /><br/><br/>
			</cfoutput>
			</div>
		</td>
		<td valign="top" style="padding-left:5px;">
			<div id="breadcrumb" style="padding-left:5px;">
				<h4>
					<cfoutput><a href="/views/admin/index.cfm">Adminstrative Area</a> > Corporate News</cfoutput>
				</h4>
			</div>
			<table border="0" width="100%" align="left" id="plainLinks">
				<tr>
					<td><h1>Corporate News Items List</h1></td>
					<td align="right">
						<cfoutput><a href="/views/admin/news/form.cfm">Add News Item</a></cfoutput>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<cfoutput>
						<table id="corpNewsList" class="tablesorter" width="100%">
							<thead>
								<tr>
									<th width="5%">&nbsp;</th>
									<th width="65%">Title</th>
									<th width="15%">Release<br/>Date</th>
									<th width="15%">Updated<br/>Date</th>
								</tr>
							</thead>
							
							<cfif corpNews.recordCount GT 10>
								<tfoot>
									<tr>
										<th>&nbsp;</th>
										<th>Title</th>
										<th>Release Date</th>
										<th>Updated Date</th>
									</tr>
								</tfoot>
							</cfif>
							
							<tbody>
								<cfloop query="corpNews">
									<tr>
										<td valign="top"><a href="/views/admin/news/form.cfm?newsID=#corpNews.newsID#">Edit</a></td>
										<td valign="top">#corpNews.title#</td>
										<td valign="top">#DateFormat(corpNews.releaseDate,"MM/DD/YYYY")#</td>
										<td valign="top">#DateFormat(corpNews.dateUpdated, "MM/DD/YYYY")#</td>
									</tr>
								</cfloop>
							</tbody>
						</table>
						</cfoutput>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<!---END EDITABLE REGION--->
</td>
		</tr>
		<tr>
			<td colspan="4" class="footer2">
				<div id="footer_address">
						Naval Systems, Inc.<br>
						21491 Great Mills Road, Suite 100<br>
						Lexington Park, MD 20653<br>
						Phone: (301) 737-1911<br>
						Fax: (301) 737-1940					
					</div>
				
				
				<div id="footer_copyright">
					&copy; 2014 Naval Systems, Inc.
				</div>
			</td>
		</tr>
	</table>
	<br/>
	<cfoutput>
	<cfinclude template="/views/layout/new_footer.cfm" />
	</cfoutput>
</body>
</html>