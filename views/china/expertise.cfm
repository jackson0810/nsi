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
<script type="text/javascript">
		document.title = "Naval Systems, Inc. - China Lake (Areas of Expertise)";
	</script>
<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC" style="padding: 0 5px 0 5px;">
			<div id="mro_menu">
				<ul>
					<li style="border-bottom: 1px solid ##e2e2e2;"><a href="/views/china/index.cfm">About China Lake</a></li>
					<li style="border-bottom: 1px solid ##e2e2e2;"><a href="/views/china/expertise.cfm">Areas of Expertise</a></li>
					<li style="border-bottom: 1px solid ##e2e2e2;">
						<a href="javascript:void(0);" onclick="$('div.chinaMgmt').toggle('slow');">China Lake Mgmt POC</a>
						<div style="display:none; padding: 5px 0px 8px 10px;" class="chinaMgmt">
							Matt Baudhuin<br/>
							Office:  (760) 495-4411<br/>
							Cell:  (760) 608-2991
						</div>
					</li>
					<li style="border-bottom: 1px solid ##e2e2e2;">
						<a href="javascript:void(0);" onclick="$('div.chinaBP').toggle('slow');">China Lake Business Development POC</a>
						<div style="display:none; padding: 5px 0px 8px 10px;" class="chinaBP">
							Charlie Panten<br/>
							Office:  (760) 495-4411<br/>
							Cell:  (608) 385-0505
						</div>
					</li>
				</ul>
			</div>
			<div align="center">
				<img src="/images/thumbs/ChinaLake_thumb.gif" width="140" /><br/><br/>
				<img src="/images/thumbs/H1_Flight_thumb.jpg" width="130" />
			</div>
			<br/><br/>
		</td>
		<td valign="top" style="padding-left:5px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<h1>China Lake  - Areas of Expertise</h1>
						<h2>Unmanned Systems Activity</h2>
						<ul style="padding-left:15px;">
							<li>STUAS Tier II admin support for flight demo</li>
							<li>Foreign visit coordination support</li>
							<li>Target and sensor payload integration support</li>
			
						</ul>
						<br/>
						<h2>Counter Improvised Explosive Device (CIED)</h2>
						<ul style="padding-left:15px;">
							<li>CIED security and information assurance coordination</li>
						    <li>Development of counter terrorism briefings and test plans</li>
						   	<li>Test documentation and data analysis</li>
						    <li>Perform test trials expanding to new vulnerabilities</li>
						    <li>Report to government test progress and mapping of results</li>
						</ul>
					</td>
					<td align="center" valign="middle" style="padding-right: 5px;" width="190">
						<img src="/images/fireScoutLand.gif" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<br/>
			<h2>System Engineering (allin CIED testing)</h2>
			<ul style="padding-left:15px;">
				<li>System Engineering Processes (evaluation, training, & implementation; product development strategy)</li>
				<li>Risk Management (methodology & process development; risk analysis).</li>
				<li>Systems Analysis (verification using statistical analysis techniques, performance analysis, toolset skills).</li>
			</ul>
			<br/>
			<h2>Information Assurance</h2>
			<ul style="padding-left:15px;">
				<li>Range software support and authentication</li>
  				<li>Certification of range for SSAA qualification</li>
 	 			<li>Preparations on Authority to Operate for site mandates on the RDT&amp;E network</li>
			</ul>
			<br/>
			<h2>Test and Evalutation</h2>
			<ul style="padding-left:15px;">
				<li>
					Operating in teaming contracts NSI is pursuing new venues and contracts that will continue further development.  Looking to offer  more flexibility and 
					accessibility into the restricted airspace R-2508 China Lake site for weapons tests and evaluations along with the surrounding National Airspace being 
					used at China Lake.
				</li>
				<li>
					Member of AUVSI and have participated in experimental weeks in conjunction with the NSOC/Naval Post Graduate School sponsored TNT events looking for new
					technologies and ides to be exploited at China Lake.  Ideas presented are UAS payload integrations and platform inception test flights for use in 
					future tests or evaluations.
				</li>
			</ul>
			<br/>
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