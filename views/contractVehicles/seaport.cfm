<html>
<cfsilent>
	<cfquery name="taskOrders" datasource="nsiwebdata09">
		SELECT		taskOrderID, taskOrderNumber, description, pdfName, status, dateEntered, dateUpdated 
	    FROM 		taskOrders
	    WHERE		status = 1
		ORDER BY	taskOrderNumber ASC
	</cfquery>
</cfsilent>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - Seaport</title>
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
			<h1>SeaPort Enhanced</h1>
			<p>

				In May 2005, NSI was awarded Seaport-e prime contract, Number N00178-05-D-4466, and in February 2014 was awarded SeaPort-e prime contract, Number N00178-14-D-7851.  Under the Seaport-e contract, NSI provides world class professional support services for 
				all Navy/Marine Corps Systems Command Program Executive Offices, Directorates and field activities.  The following size status classifications apply to NSI under this contract:  
				Small Business, Veteran Owned Small Business and Service Disabled Veteran Owned Small Business. This contract is effective in all seven zones of the United States, as follows:
				<ul style="padding-left:15px;">
					<li>Zone 1 - Northeast</li>
					<li>Zone 2 - National Capital</li>
					<li>Zone 3 - Mid Atlantic</li>
					<li>Zone 4 - Gulf Coast</li>
					<li>Zone 5 - Midwest</li>
					<li>Zone 6 - Southwest</li>
					<li>Zone 7 - Northwest</li>
				</ul>
				<br>
				Our Seaport-e contract expires 04 April 2014.
			</p>
			<br><br>
                        <h2>SeaPort-e Team Members</h2>

<br>

<a href="/views/documents/NSISeaPorteTeamMemberInfo3614.pdf">Team Member Information</a>
                              
			<br/><br/>
<h1>NSI's Awarded Task Orders</h1>
<br/><br/>
<ul style="padding-left:15px;">
<li><a href="/views/documents/M801_mod_1.pdf"><b>M801</b></a></li>
<li><a href="/views/documents/M802.pdf"><b>M802</b></a></li>
<li><a href="/views/documents/M803.pdf"><b>M803</b></a></li>
<li><a href="/views/documents/M804.pdf"><b>M804</b></a></li>
<li><a href="/views/documents/M805_mod_23.pdf"><b>M805</b></a></li>
<li><a href="/views/documents/M806_mod_5.pdf"><b>M806</b></a></li>
<li><a href="/views/documents/M807_mod_13.pdf"><b>M807</b></a></li>
<li><a href="/views/documents/M808.pdf"><b>M808</b></a></li>
<li><a href="/views/documents/M809_mod_14.pdf"><b>M809</b></a></li>
<li><a href="/views/documents/M810_mod_9.pdf"><b>M810</b></a></li>
<li><a href="/views/documents/M811_mod_2.pdf"><b>M811</b></a></li>
<li><a href="/views/documents/M812_mod_3.pdf"><b>M812</b></a></li>
<li><a href="/views/documents/M813_mod_4.pdf"><b>M813</b></a></li>
</ul>
 </td>
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