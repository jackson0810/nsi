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
		<title>Naval Systems, Inc. - Customer Information Data Sheet</title>
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
			<h1>Customer Information Data Sheet</h1>
			<ol style="padding-left: 30px;">
				<li style="padding-bottom: 10px;">
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
				</li>
				<li style="padding-bottom: 10px;">
					<strong>MAXIMUM ORDER:  </strong>The maximum delivery/task order limit for this contract is $1,000,000.  Notwithstanding this limit, ordering agencies may place orders exceeding this limit in accordance with FAR 8-404.  
				</li>
				<li style="padding-bottom: 10px;">
					<strong>MINIMUM ORDER:  </strong>There is a $300.00 minimum dollar value limitation on task orders placed under this schedule.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>GEOGRAPHIC COVERAGE:  </strong>Domestic only.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>DISCOUNT FROM LIST PRICES OF STATEMENT OF NET PRICE:  </strong>Prices shown reflect Government net prices (discounts already deducted).
				</li>
				<li style="padding-bottom: 10px;">
					<strong>QUANTITY DISCOUNTS:  </strong>GSA Net pricing show in the pricing tables provided.  See Section 
				</li>
				<li style="padding-bottom: 10px;">
					<strong>PROMPT PAYMENT TERMS:  </strong>0%, Net 30 Days
				</li>
				<li style="padding-bottom: 10px;">
					<strong>GOVERNMENT COMMERCIAL PURCHASE CARD:  </strong>NSI accepts government purchase cards at or below the micro-purchase threshold.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>FOREIGN ITEMS:  </strong>None
				</li>
				<li style="padding-bottom: 10px;">
					<strong>TIME OF DELIVERY:  </strong>Specified on Task Orders
				</li>
				<li style="padding-bottom: 10px;">
					<strong>F.O.B.:  </strong>Destination
				</li>
				<li style="padding-bottom: 10px;">
					<strong>ORDERING ADDRESS:  </strong>Same as company address.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>WARRANTY PROVISION:  </strong>Contractor�s standard commercial warranty.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>TERMS AND CONDITIONS OF GOVERNMENT PURCHASE CARD ACCEPTANCE (any thresholds above the micro-purchase level):  </strong>Contact Contractor.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>DATA UNIVERSAL NUMBERING SYSTEM (DUNS):  </strong>14-2406185
				</li>
				<li style="padding-bottom: 10px;">
					<strong>NOTIFICATION REGARDING CENTRAL CONTRACTOR REGISTRATION (CCR) DATABASE:  </strong>NSI is registered in CCR.
				</li>
				<li style="padding-bottom: 10px;">
					<strong>DISASTER RECOVERY PURCHASING SIN(s)</strong>
				</li>
			</ol>
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