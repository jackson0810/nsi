<html>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - SeaPort Enhanced</title>
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


<html>
<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="95%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC"  style="padding: 0 5px 0 5px;" >
			<div id="mro_menu">
				<ul>
				<li style="border-bottom: 1px solid ##e2e2e2;">
					<a href="seaport.cfm">SeaPort-e</a>
					<ul>
						<li><a href="functionalCapabilities.cfm">&raquo; Functional<br>&nbsp;&nbsp;&nbsp;Capabilities</a></li>
						<li><a href="teamMembers.cfm">&raquo; Team Members</a></li>
						<li><a href="qaPlan.cfm">&raquo; Quality<br>&nbsp;&nbsp;&nbsp;Assurance<br>&nbsp;&nbsp;&nbsp;Plan</a></li>
						<li>
							<a href="javascript:void(0);" onclick="$('div.seaPortContact').toggle('slow');">&raquo; Contacts</a>
							<div style="display:none; padding: 0px 0px 8px 25px; font-size:90%;" class="seaPortContact">
								<strong>Diana Waldorf</strong>,<br/>
								Director of Corporate Operations<br/>
								(301) 737-1911<br/>
								<a href="mailto:dwaldorf@n-s-i.us" style="font-weight: normal; color: ##2e2e2e; padding-left:0px; text-decoration: none;">dwaldorf@n-s-i.us</a>
								<br/>
								<strong>Gadsden 'Ed' Rule</strong>,</br>
								President<br/>
								(301) 919-1272<br/>
								<a href="mailto:erule@n-s-i.us" style="font-weight: normal; color: ##2e2e2e; padding-left:0px; text-decoration: none;">erule@n-s-i.us</a>
								<br/>
								<strong>Dan Seifert</strong>,<br/>
								Chief Operating Officer<br/>
								(240) 298-7158<br/>
								<a href="mailto:dseifert@n-s-i.us" style="font-weight: normal; color: ##2e2e2e; padding-left:0px; text-decoration: none;">dseifert@n-s-i.us</a>
							</div>
						</li>
						<li><a href="http://www.seaport.navy.mil/default.aspx" target="_blank">&raquo; Website</a></li>
						
					</ul>
				</li>
				<li style="border-bottom: 1px solid ##e2e2e2;"><a href="gsa.cfm">GSA</a></li>
				</ul>
			</div>
			<div align="center">
				<img src="/images/battleship.jpg" width="125" /><br/><br/>
				<img src="/images/SeaStallion.jpg" width="125" />
			</div>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>SeaPort-e Team Members</h1>
			<table border="0" width="100%" cellpadding="3" cellspacing="3">
				<tr>
				<a href="/views/documents/NSISeaPorteTeamMemberInfo3614.pdf"><b>Team Member Information<SUP>(pdf)</SUP></b></a>
<br></br>
<td valign="center">
<h1>NSI Team Member Information</h1>
<div id="pdf">
<embed src="/views/documents/NSISeaPorteTeamMemberInfo3614.pdf" width="700" height="600">				
</tr>
			</table>
			
		</td>
	
</table>
</html>

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
<!---END EDITABLE REGION--->
	