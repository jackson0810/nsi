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
<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC" align="center">
			<img src="/images/thumbs/0430v22_thumb.jpg" width="125" /><br/><br/>
			<img src="/images/thumbs/H1_Flight_thumb.jpg" width="125" />
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Clients/Partners</h1>
			<h3><a name="NavalAirSystems"></a>Naval Air Systems Command (NAVAIR)</h3>
			<ul style="padding-left:15px;">
				<li>Aging Aircraft Integrated Product Team (AIR-4.1D)</li>
				<li>Office of Technology & Intelligence (AIR-4.0X)</li>
				<li>Comptroller (AIR-10.0)</li>
				<li>Naval Air Warfare Center (NAWC)</li>
			</ul>
			<h3><a name="NavalAviationProgramOffices"></a>Naval Aviation Program Offices</h3>
			<ul style="padding-left:15px;">
				<li>Aircrew Systems (PMA-202)</li>
	    		<li>Support/Commercial Derivative Aircraft (PMA-207)</li>
	    		<li>E-2/C-2 Program (PMA-231)</li>
	    		<li>EA-6 Program (PMA-234)</li>
	    		<li>H-1 Program (PMA-276)</li>
	   			<li>Presidential Helicopters Program (PMA-274)</li>
	    		<li>Unmanned Aerial Systems Program (PMA-263)</li>
	    		<li>FRC Jacksonville</li>
	    		<li>Advanced Tactical Aircraft Protection Systems (PMA-272)</li>
			</ul>
			<h3><a name="IndustryPartnersClients"></a>Industry Partners and Clients</h3>
			<ul style="padding-left:15px;">
				<li>Titan Corporation</li>
			   	<li>Wyle Laboratories</li>
			    <li>Camber</li>
			    <li>Lockheed Martin Information Network Services</li>
			    <li>DDI</li>
			    <li>AAI</li>
			    <li>TRCI</li>
			    <li>BAI</li>
<li><a href= "http://www.ruag.com/self-protection/Self_Protection/MISSIM"><b>RUAG MISSIM</b></a></li>
			</ul>
			<br/>
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