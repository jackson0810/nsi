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
		<title>Naval Systems, Inc. - Authorized Special Item Number(s) (SINS)</title>
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
				</li>
				<li style="border-bottom: 1px solid ##e2e2e2;">
					<a href="gsa.cfm">GSA</a>
					<ul>
						<li><a href="authorizedSpecialItemNumber.cfm">&raquo; Authorized Special<br/>&nbsp;&nbsp;&nbsp;Item Number<br>&nbsp;&nbsp;&nbsp;(SINS)</a></li>
						<li><a href="customerInfoDataSheet.cfm">&raquo; Customer Data<br/>&nbsp;&nbsp;&nbsp;Sheet</a></li>
						<li><a href="laborCategories.cfm">&raquo; Labor Categories<br>&nbsp;&nbsp;&nbsp;(All SINS)</a></li>
						<li><a href="pricelist.cfm">&raquo; Pricelist</a></li>
					</ul>
				</li>
				</ul>
			</div>
			<div align="center">
				<img src="/images/battleship.jpg" width="125" /><br/><br/>
				<img src="/images/SeaStallion.jpg" width="125" />
			</div>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Authorized Special Item Numbers (SINS)</h1>
			
			<table border="0" class="tablesorter">
				<thead>
					<tr>
						<th width="30%">Special Item Number (SIN)</th>
						<th>Services</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="##874-1">874-1</a></td>
						<td>Consulting Services</td>
					</tr>
					<tr>
						<td><a href="##874-1">874-1RC</a></td>
						<td>Consulting Services</td>
					</tr>
					<tr>
						<td><a href="##874-2">874-2</a></td>
						<td>Facilitation Services</td>
					</tr>
					<tr>
						<td><a href="##874-2">874-2RC</a></td>
						<td>Facilitation Services</td>
					</tr>
					<tr>
						<td><a href="##874-3">874-3</a></td>
						<td>Survey Services</td>
					</tr>
					<tr>
						<td><a href="##874-3">874-3RC</a></td>
						<td>Survey Services</td>
					</tr>
					<tr>
						<td><a href="##874-6">874-6</a></td>
						<td>Acquisition Management Support</td>
					</tr>
					<tr>
						<td><a href="##874-6">874-6RC</a></td>
						<td>Acquisition Management Support</td>
					</tr>
					<tr>
						<td><a href="##874-7">874-7</a></td>
						<td>Program and Project Management Services</td>
					</tr>
					<tr>
						<td><a href="##874-7">874-7RC</a></td>
						<td>Program and Project Management Services</td>
					</tr>
				</tbody>
			</table>
			
			<h2>SIN Details</h2>
			<p>
				NSI offers Management, Organizational and Business Improvement Services under each of the following SINs.
			</p>
			<br/><br/>
			<h2><a name="874-1"></a>874-1 Consulting Services</h2>
			<p>
				Services required under this SIN shall include providing expert advice, assistance, guidance or counseling in support of agencies� management, organizational and business 
				improvement efforts.  This may also include studies, analyses and reports documenting any proposed developmental, consultative or implementation efforts.  Examples of consultation 
				include but are not limited to: 
				<ul style="padding-left:15px;">
					<li>strategic, business, and action planning</li>
					<li>systems alignment</li>
					<li>high performance work</li>
					<li>leadership systems</li>
					<li>process and productivity improvement</li>
					<li>leadership systems</li>
					<li>organizational assessments</li>
					<li>cycle time</li>
					<li>performance measures and indicators</li>
					<li>program audits and evaluations</li>
				</ul>
				
			</p>
			<br/><br/>
			<h2><a name="874-2"></a>874-2 Facilitation Services</h2>
			<p>
				Services required under this SIN shall include providing facilitation and related decision support services to agencies engaging in collaboration efforts, working groups, or integrated 
				product, process, or self-directed teams.  Agencies bringing together diverse teams and/or groups with common and divergent interests may require a neutral party to assist them in the 
				following areas:
				<ul style="padding-left:15px;">
					<li>the use of problem solving techniques</li>
					<li>resolving disputes, disagreements, and divergent views</li>
					<li>providing a draft for the permanent record</li>
					<li>defining and refining the agenda</li>
					<li>logistical meeting/conference support when performing technical facilitation</li>
					<li>convening and leading large and small group briefings and discussions</li>
					<li>recording discussion content and focusing decision-making</li>
					<li>debriefing and overall meeting planning</li>
					<li>preparing draft and final reports for dissemination</li>
				</ul>
			</p>
			<br/><br/>
			<h2><a name="874-3"></a>874-3 Survey Services</h2>
			<p>
				Services required under this SIN shall include providing expert consultation, assistance, and deliverables associated with all aspects of surveying within the context of MOBIS.  NSI 
				can assist with, and/or perform all phases of the survey process to include, but not limited to:
				<ul style="padding-left:15px;">
					<li>planning survey design</li>
					<li>sampling; survey development</li>
					<li>defining and refining the agenda</li>
					<li>determining proper survey data collection methodology</li>
					<li>survey database administration</li>
					<li>assessing reliability and validity of data</li>
					<li>administering surveys using various types of data collection methods</li>
					<li>pretest/pilot surveying</li>
					<li>analyses of quantitative and qualitative survey data</li>
					<li>Production of reports to include, but not limited to: description and summary of results with associated graphs, charts, and tables; description of data collection and survey 
						administration methods; discussion of sample characteristics and the representative nature of data; analysis of non-response; and briefings of results to include discussion of
						recommendations and potential follow-up actions
					</li>
				</ul>
			</p>
			<br/><br/>
			<h2><a name="874-6"></a>874-6 Privatization Support Services & Documentation</h2>
			<p>
				Services required under this SIN shall include providing expert advice, consultation, assistance, and documentation in support of conducting OMB Circular A-76 Commercial Activities 
				studies, strategic sourcing studies, privatization studies, public-private partnerships, Federal Activities Inventory Reform Act, and other competitive sourcing projects or efforts.  
				NSI services may include, but are not limited to:
				<ul style="padding-left:15px;">
					<li>strategic, tactical, and operational level planning support</li>
					<li>initial study planning and assessments</li>
					<li>development of Performance Work Statements (PWS)</li>
					<li>development of Quality Assurance Surveillance Plans (QASP)</li>
					<li>comparison of in-house bids to proposed Interservice Support Agreement (ISSA) prices</li>
					<li>performance of management studies to determine the Government�s Most Efficient Organization (MEO)</li>
					<li>administrative appeal process support</li>
					<li>comparison of in-house Government cost estimates</li>
					<li>public-private partnership support</li>
					<li>MEO performance reviews</li>
					<li>MEO or contract implementation support as a result of a privatization support</li>
				</ul>
			</p>
			<br/><br/>
			<h2><a name="874-7"></a>874-7 Program AND Project Management Services</h2>
			<p>
				Services required under this SIN shall include providing management or integration of programs and project.  NSI services may include, but are not limited to: 
				<ul style="padding-left:15px;">
					<li>Program management and oversight</li>
					<li>Project management</li>
					<li>Program integration of a limited duration*</li>
				</ul>
				<br/>
				* a variety of functions may be utilized to support program integration or project management tasks.
			</p>
			<br/><br/>
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