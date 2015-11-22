<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - Contact</title>
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
<script type="text/javascript">
	document.title = "Naval Systems, Inc. - Contact Us";
</script>
<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC" align="center">
			<img src="/images/thumbs/0430v22_thumb.jpg" width="125" /><br/><br/>
			<img src="/images/thumbs/H1_Flight_thumb.jpg" width="125" />
		</td>
		<td valign="top" style="padding-left:5px;" id="regLinks">
			<h1>Contact Us</h1>
			<br/>
			<h2>Corporate Headquarters</h2>
			<p>
				Naval Systems, Inc. (NSI)<br>
				21491 Great Mills Road, Suite 100<br>
				Lexington Park, MD 20653<br>
				Phone: (301) 737-1911<br>
				Fax: (301) 737-1940<br/><br/>	
				<a href="javascript:void(0);" onclick="$('div.driving').toggle('slow');">Driving Directions to NSI</a>
				<div style="display:none; padding-left:15px;" class="driving">
					<ul>
						<li>From 235, turn onto Great Mills Road (going West away from Gate 2)</li> 
						<li>Go approximately 1.2 miles</li> 
						<li>After you pass Pacific Drive (seen on your right), take the next right into a parking lot</li> 
						<li>Take an immediate right, go to the&nbsp; second building on your left, Building 21491 (suite 100)</li> 
						<li>NSI sign is on the door</li> 
						<li>Come on in, veer left, Conference Room will be on your left</li>
					</ul>
					<br>
				</div>
			</p>
			<table border="0" width="80%">
				<tr>
					<td><strong>Contracts Point of Contact</strong></td>
					<td><strong>Technical Points of Contact</strong></td>
				</tr>
				<tr>
					<td colspan="">
						Diana Waldorf<br/>
						Director, Corporate Operations<br/>
						(301) 737-1911<br/>
						<a href="mailto:dwaldorf@n-s-i.us">dwaldorf@n-s-i.us</a>
					</td>
					<td>
						Gadsden 'Ed' Rule<br/>
						President<br/>
						(301) 919-1272<br/>
						<a href="mailto:erule@n-s-i.us">erule@n-s-i.us</a>
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30">&nbsp;</td>
				</tr>
				<tr>
					<td><h2>Calibration</h2></td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						8551-1 Westside Industrial Drive, Jacksonville, FL 32219-3273<br/>
						Office:  (904) 248-4325<br/>
						Fax:  (904) 248-4301<br/>
						<a href="mailto: Calibration@n-s-i.us"> Calibration@n-s-i.us</a><br/>
						Monday- Friday 6:00 am - 3:00 pm (Eastern) 
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30">&nbsp;</td>
				</tr>
				<tr>
					<td><h2>China Lake</h2></td>
				</tr>
				<tr>
					<td><strong>Management Point of Contact</strong></td>
					<td><strong>Business Development Point of Contact</strong></td>
				</tr>
				<tr>
					<td valign="top">
						Matt Baudhuin<br/>
						<!--- Office:  (xxx) xxx-xxxx<br/> --->
						Cell:  (760) 608-2991
					</td>
					<td>
						Charlie Panten<br/>
						Office:  (760) 495-4411<br/>
						Cell:  (608) 385-0505 
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">
						<h2>Manufacturing, Repair, Overhaul and Logistics (MRO&L)</h2>
						Naval Systems, Inc. MRO&L<br>
						8551-1 Westside Industrial Drive<br>
						Jacksonville, FL 32219-3273<br>
						Phone: (904) 248-4300<br>
						Fax: (904) 248-4301<br/><br/>
						<a href="javascript:void(0);" onclick="$('div.drivingMROL').toggle('slow');">Driving Directions to MRO&L</a>
						<div style="display:none; padding-left:15px;" class="drivingMROL">
							<ul>
								<li>From 295, take the Pritchard Rd exit Left under the bridge</li> 
								<li>Go approximately 1.8 miles</li> 
								<li>Go Right on Bulls Bay Hwy</li> 
								<li>Left on Westside Industrial Dr</li> 
							</ul>
							<br>
						</div>		
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td><strong>Technical Point of Contact</strong></td>
					<td><strong>Business Development Point of Contact</strong></td>
				</tr>
				<tr>
					<td>
						Karl Hunnicutt, General Manager<br/>
						Naval Systems, Inc. (NSI) MRO&L Division<br/>
						(904) 248-4307<br/>
						<a href="mailto:khunnicutt@n-s-i.us">khunnicutt@n-s-i.us</a>
					</td>
					<td>
						Karl Hunnicutt, General Manager<br/>
						Naval Systems, Inc. (NSI) MRO&L Division<br/>
						(904) 248-4307<br/>
						<a href="mailto:khunnicutt@n-s-i.us">khunnicutt@n-s-i.us</a>
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