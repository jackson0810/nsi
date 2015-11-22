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
<table border="0" width="95%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC" align="center">
			<img src="/images/thumbs/excellence_thumb.gif" /><br/><br/>
			<img src="/images/thumbs/StrategicPlan_thumb.gif" />
			
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Capabilities</h1>
			<table border="0" cellspacing="5">
				<tr>
					<td valign="top" width="50%">
						<h3>Business/Financial Management</h3>
						<ul style="padding-left:15px;">
							<li>Business and Financial Modeling</li>
							<li>Trend Analysis and Forecasting</li>
							<li>POM and Budget Formulation</li>
							<li>Spend Plans and ReDet</li>
							<li>SIGMA Budgeting and Financial Execution</li>
							<li>Business Case Analyses</li>
							<li>Product and Strategic Alignment Analysis</li>
							<li>Cost Estimation and Analysis</li>
							<li>Metrics / Performance Measures / Dashboards</li>
							<li>AIRSpeed Project Support</li>
							<li>Strategic and Business Planning</li>
							<li>Organizational Development and Transition</li>
							<li>Instructions / SOPs / CONOPS</li>
							<li>Organizational Development / Change Management</li>
						</ul>
					</td>
					<td width="10%">&nbsp</td>
					<td valign="top" width="40%">
						<h3><a name="ProgramMgmt"></a>Program Management</h3>
						<ul style="padding-left:15px;">
							<li>Program Management</li>
							<li>Planning, Control, Budgeting</li>
							<li>Project Management/Scheduling</li>
							<li>Critical Path Analysis</li>
							<li>Earned Value Management</li>
							<li>Financial & TOC Analysis</li>
							<li>Risk Management</li>
							<li>Human Resources</li>
							<li>FMS Case Support</li>
							<li>Administrative Support</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td valign="top" width="50%">
						<h3><a name="SystemEngineeringTechnology"></a>System Engineering/Technology</h3>
						<ul style="padding-left:15px;">
							<li>Concept Development</li>
							<li>Requirements Analysis and Identification</li>
							<li>WBS Formulation</li>
							<li>Systems Engineering Mgt Planning</li>
							<li>Hardware/Software Design</li>
							<li>Specification Development</li>
							<li>Systems Integration</li>
							<li>Test and Evaluation</li>
							<li>Risk Management</li>
							<li>Information Technology</li>
                                                        <li>Gyroscope Displacement</li>
						</ul>
					</td>
					<td width="10%">&nbsp</td>
					<td valign="top" width="40%">
						<h3><a name="InServiceSupport"></a>In-Service Support</h3>
						<ul style="padding-left:15px;">
							<li>Cost-Wise Readiness Analysis and Metrics</li>
						    <li>Upgrade Cost-Benefit Analysis</li>
						    <li>RM&A and Supportability Analysis</li>
						    <li>In-Service Engineering</li>
						    <li>ECP/TD Coordination</li>
						    <li>Configuration Management</li>
						    <li>Asset and Configuration Tracking</li>
						    <li>On Condition Maintenance Planning</li>
						    <li>Total Life Cycle Cost/TOC Estimates</li>
						    <li>FST Tasking & PRL/PRE Resource Mgt</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
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