<cfsilent>
	<cfquery name="newsItems" datasource="nsiwebdata09">
		SELECT		TOP 5 newsID, title, shortDesc, longDesc, dateUpdated, releaseDate
		FROM		corpNews
		ORDER BY	releaseDate	DESC
	</cfquery>
	<cfif isDefined('url.nid')>
		<cfset nid = url.nid />
	<cfelse>
		<cfset nid = 0 />
	</cfif>
	
	<cfif isDefined('url.yr')>
		<cfset yr = url.yr />
	<cfelse>
		<cfset yr = 0 />
	</cfif>
	
	<cfset yearMax = DateFormat(Now(),'YYYY') />
	<cfset yearMin = 2006 />
	
	<!---Get the news item.  If the nid(newsID) was not passed in then get all news items ordered by year/month--->
	<cfquery name="corpNews" dbtype="query">
		SELECT		newsID, title, shortDesc, longDesc, dateUpdated, releaseDate
		FROM		newsItems
		WHERE		1=<cfqueryparam cfsqltype="cf_sql_integer" value="1" />
		<cfif nid NEQ 0>
			AND		newsID = <cfqueryparam cfsqltype="cf_sql_integer" value="#nid#">
		</cfif>
		<cfif yr NEQ 0 AND yr GTE yearMin>
			AND		releaseDate BETWEEN '1/1/#yr#' AND '12/31/#yr#'
		</cfif>
	</cfquery>
</cfsilent>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Home</title>
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
				<em>Supporting the Warfighter!
				<br/><br/>
				A Service Disabled<br/>Veteran Owned Small Business
				</em>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<cfinclude template="/views/layout/new_navigation.cfm"/>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">
<cfoutput>
<!---BEGIN EDITABLE REGION--->
<table border="0" width="99%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC" style="padding: 0 5px 0 5px;">
			<div id="mro_menu">
				<ul>
					<li style="border-bottom: 1px solid ##e2e2e2;">
						<a href="javascript:voin(0);">Photo Album</a>
						<div style="padding: 0px 0px 8px 25px; font-size:90%;">
							<a href="<!---#BuildURL('showGolf2009')#--->">2009 Golf Tournament</a>
							<a href="<!---#BuildURL('showGolf2010')#--->">2010 Golf Tournament</a>
							<a href="<!---#BuildURL('showGolf2012')#--->">2012 Golf Tournament</a>
						</div>
					</li>
				</ul>
			</div>
			<div align="center">
				<img src="/images/thumbs/0430v22_thumb.jpg" width="125" /><br/><br/>
				<img src="/images/thumbs/H1_Flight_thumb.jpg" width="125" />
			</div>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Company News</h1>
			<cfif nid NEQ 0>
				<table border="0" cellspacing="10" id="plainLinks">
					<tr>
						<th align="left">Title:&nbsp;</th>
						<td>#corpNews.title#</td>
					</tr>
					<tr>
						<th align="left">Date:&nbsp;</th>
						<td>#DateFormat(corpNews.releaseDate,"MM/DD/YYYY")#</td>
					</tr>
					<tr>
						<th valign="top" align="left">Description:&nbsp;</th>
						<td>#paragraphFormat(corpNews.longDesc)#</td>
					</tr>
				</table>
			<cfelse>
				<form name="corpNewsList" action="/views/news.cfm" method="get">
				Year:  <select name="yr" onchange="javascript: corpNewsList.submit();">
					<option value="0" <cfif yr EQ 0>selected="true"</cfif>>All Years</option>
					<cfloop from="#yearMax#" to="#yearMin#" step="-1" index="yearValue">
						<option value="#yearValue#" <cfif yr EQ #yearValue#>selected="true"</cfif>>#yearValue#</option>
					</cfloop>
				</select>
				</form>
				<table border="0" class="tablesorter">
					<thead>
						<tr>
							<th width="15%">Release Date</th>
							<th>Title</th>
						</tr>
					</thead>
					<tbody>
					<cfif corpNews.recordCount EQ 0>
					<tr>
						<td colspan="2">There are no news items for the #yr#.</td>
					</tr>
					<cfelse>
					<cfloop query="corpNews">
					<tr>
						<td>#DateFormat(corpNews.releaseDate,"MM/DD/YYYY")#</td>
						<td><a href="<!---#BuildURL('showNews','nid=#corpNews.newsID#')#--->" class="">#corpNews.title#</a></td>
					</tr>
					</cfloop>
					</cfif>
					</tbody>
				</table>
			</cfif>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>
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