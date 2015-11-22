<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - MRO&L (Avionics)</title>
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
				<cfinclude template="side_nav.cfm" />
			</div>
		</td>
		<td valign="top" height="300px;" width="78%" style="padding-left:5px;	">
			<h1>Supply Chain Management</h1>
			<p>
				We offer a Government approved asset management system which is used to support customer assets in a storage and warehousing environment.
				We offer pick-up, shipping, receiving, and inventory management support services to numerous Commercial and Government teammates. We
				also manage Performance Based Logistics (PBL) contracts wherein we store serviceable assets, deliver for repair, pick-up, and ship repaired
				assets to the customer as directed.  We manage and report bit and piece part inventories as required by the customer and deliver to the
				repair site or as directed.
			</p>
			<table border="0">
				<tr>
					<td width="40%">
						<img src="/images/supplyChain.gif" />
					</td>
					<td width="5%">&nbsp</td>
					<td valign="top">
						<ul style="padding-left:15px;">
                            <li>Initial Provisioning and Stock Replenishment</li>
							<li>
								Inventory Management
								<ul style="padding-left:15px;">
									<li>U.S. Government Approved Property Control System</li>
								</ul>
							</li>
							<li>Automated Logistics Services</li>
							<li>Requirements Determination Management</li>
							<li>Economical Order Quantity Requirements Management</li>
							<li>Distribution Management</li>
							<li>Single or Multiple Customer Ordering Process</li>
							<li>Total Customer Support</li>
							<li>
								Total Asset Visibility
								<ul style="padding-left:15px;">
									<li>NAVSUPWSS Commercial Asset Visibility System (CAVS)</li>
								</ul>
							</li>
							<li>EDI Capable</li>
                                                        <li>KIT procurement and assembly</li>
                                                        <li>Remote site kitting and shipping</li>
                                                        <li>Government approved KIT Inventory System</li>
                                                        <li>Kit component receipt management</li>
                                                        <li>Kit quality assurance, marking, storage, and shipping</li>

						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3">
						<h2>Major PBL Contracts</h2>
						<ul style="padding-left:15px;">
							<li>AAI Services: EA-6B Hydraulics PBL</li>
							<li>MOOG: F/A-18 In Board Flap Transmissions PBL</li>
						</ul>
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3" align="center"><h3>We Work With The Customer To Ensure Their Needs Are Satisfied</h3></td>
				</tr>
			</table>

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