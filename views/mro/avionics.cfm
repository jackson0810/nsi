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
			<h1>Avionics MRO</h1>
			<p>
				Operating an FAA Certified Instrument repair/overhaul center (NY4R405M)  specializing in the common flight instruments from legacy
				aircraft still operating in the military and commercial environments.  Our center also has wire/cable manufacturing and test set design
				and fabrication capability along with  certified soldering and connector repairs. We also make replacement Aircraft cables.
			</p>
			<br/>
			<table border="0" width="100%">
				<tr>
					<td width="50%" valign="top">
						<h2>Certified FAA Repair Station</h2>
						<ul style="padding-left:15px;">
							<li>
								Instrument Class 1, 2, 3, and 4
								<ul style="padding-left:15px;">
									<li>Mechanical</li>
									<li>Electrical</li>
									<li>Gyroscopic</li>
									<li>Electronic</li>
								</ul>
							</li>
							<li>
								Radio Class 1, 2, and 3
								<ul style="padding-left:15px;">
									<li>Communications Equipment</li>
									<li>Navigational Equipment</li>
									<li>Radar Equipment</li>
								</ul>
							</li>
							<li>
								Navy/Air Force Source Approved
								<ul style="padding-left:15px;">
									<li>
										425+ Items
									</li>
								</ul>
							</li>
						</ul>
					</td>
					<td width="50%" valign="top">
						<h2>Instrument Repair Overhaul</h2>
						<ul style="padding-left:15px;">
							<li>
								Altimeters
								<ul style="padding-left:15px;">
									<li>Barometric/Encoding</li>
								</ul>
							</li>
							<li>Rate of Climb/Vertical Speed</li>
							<li>Airspeed Indicators</li>
							<li>Attitude Indicators</li>
							<li>Bearing Distance Heading Indicator (BDHI)</li>
							<li>Accelerometers</li>
							<li>Exhaust Gas Temperature (EGT) Indicators</li>
							<li>Turn & Bank Indicators</li>
							<li>ITT Indicators</li>
							<li>Volt/Ammeter</li>
							<li>Differential/Pressure Indicators</li>
							<li>Dual/Triple Tachometer Indicators</li>
							<li>Fuel Quantity Indicators</li>
							<li>Fuel Flow Indicators</li>
							<li>Air Navigation Computers</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td valign="top">
						<h2>Avionics Repair/Overhaul</h2>
						<ul style="padding-left:15px;">
							<li>DME</li>
							<li>Lift Computer</li>
							<li>Auto Pilot</li>
							<li>Airspeed Computer</li>
							<li>Radar Altimeter</li>
							<li>IFF</li>
						</ul>
					</td>
					<td valign="top">
						<h2>Test Sets</h2>
						<ul style="padding-left:15px;">
							<li>B144 (Fuel Quantity Calibration)</li>
							<li>B161 (Nacelle Fire Extinguisher)</li>
							<li>BR61-101 (Temperature Control)</li>
							<li>B141 (Flap Asymmetry)</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2"><h2>Additional Capabilities/Information</h2></td>
				</tr>
				<tr>
					<td>
						<ul style="padding-left:15px;">
							<li>Wiring Harness Fabrication/Repair</li>
							<li>Test Equipment Manufacture/Remanufacture</li>
							<li>
								Reverse Engineering
								<ul style="padding-left:15px;">
									<li>Redesign</li>
									<li>Eliminate component Obsolescence</li>
								</ul>
							</li>
						</ul>
					</td>
					<td>
						<ul style="padding-left:15px;">
							<li>All Technicians Level II/III Solder Certified</li>
							<li>Laminar Benches/Clean Room Capability</li>
							<li>ESD Benches</li>
							<li>Warranty Provided</li>
							<li>Proven Track Record</li>
						</ul>
					</td>
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