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
				<cfinclude template="/views/layout/new_navigation.cfm" />
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">
<cfoutput>
<!---BEGIN EDITABLE REGION--->
<!--- <strong>About Us</strong>
</h4>
</div> --->
<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="95%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC"  style="padding: 0 5px 0 5px;">
			<div align="center">
				<img src="/images/thumbs/battleship_thumb.jpg" width="125" /><br/><br/>
				<img src="/images/thumbs/SeaStallion_thumb.jpg" width="125" />
			</div>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>About Us</h1>
			<div>
				<h3><a name="background"></a>Background</h3>
				<p>
					Naval Systems, Inc. (NSI), was established in January 2004 and began operations on February 1, 2004.
					We are a <strong>Service Disabled</strong> Veteran Owned Small Business currently operating in Maryland, North Carolina, Florida, and California.
					Our company is built on character. Our core values include quality, integrity, teamwork and success.
				</p>
				<h3><a name="leadership"></a>Leadership</h3>
				</p>
				<p>
					Ed, Co-founder and President, served in the United States Navy as a Surface Warfare Supply Corps Officer and within the acquisition community as a Business/Financial
					Manager for the EA-6B Program Office, the Program Executive Officer for Tactical
					Aircraft Programs, and the Assistant Secretary of the Navy for Research, Development and Acquisition. Ed has five
					years of senior management consulting experience supporting the Naval Air Warfare Center and various Naval Aviation
					programs and offices. He also served as an executive in two small businesses providing support services to the Department
					of Defense. He holds a Bachelor's of Business Administration degree in Management and a Master's of Business Administration
					degree with concentrations in Management and Finance.
				</p>
				<h3><a name="goals"></a>Goals</h3>
				<ul style="padding-left:15px;">
					<li>Provide uniformed warriors with the support they need to fight and win our nation's wars </li>
					<li>Employ innovative/disruptive process solutions that enable fast delivery of critical warfighting capability.</li>
					<li>Continue strong growth as a vital ongoing business entity according to the value we deliver.</li>
					<li>Respect and promote the inherent dignity and unique capabilities of every individual.</li>
				</ul>
				<p/>
				<h3>Locations</h3>
				<a href="/images/locations2.gif" target="_blank"><img src="/images/locations2.gif" width="675" border="0" /></a>
			</div>
			<br/>
			<div align="center">
				<font color="##666666" size="1"><em>This mission and these goals provide a glimpse into an organization built on integrity,
					<BR><SPAN>highly charged, dynamic, and able to deliver products and services of unmatched speed, quality and value.</em></FONT>
			</div>
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