<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - MRO&L (Survey)</title>
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
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	
	<tr>
		<td width="22%" valign="top" style="padding: 0 5px 0 5px;" height="100%" bgcolor="##6699CC">
			<div id="mro_menu">
				<!---<cfif event.isArgDefined('go') AND findNocase('Calibration',event.getArg('go'))>
					<cfinclude template="../calibration/menu.cfm" />
				<cfelse>--->
					<cfinclude template="side_nav.cfm" />
				<!---</cfif>--->
			</div>
		</td>
		<td valign="top" height="300px;" width="78%" style="padding-left:5px;">
			<h1>Customer Survey</h1>
			
				<p>
					Your survey was completed successfully.

				</p>	
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
						8551-1 Westside Industrial Dr.<br>
						Jacksonville, Florida, 32219<br>
						Phone: (904) 248-4325<br>
						Fax: (904) 248-4301<br>
						Business Hours: 6:00 am-3:00 pm EST<br/>
					</div>
				
				<div id="footer_copyright">
					<br/>&copy; 2014 Naval Systems, Inc.
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