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
			<h1>Pricelist</h1>
			<table border="0" class="tablesorter">
				<thead>
					<tr>
						<th>&nbsp;</th>
						<th colspan="5" align="center">Contract Year</th>
					</tr>
					<tr>
						<th>Labor Category</td>
						<th>09/05/2008 - <br>09/04/2009</th>
						<th>09/05/2009 - <br>09/04/2010</th>
						<th>09/05/2011 - <br>09/04/2012</th>
						<th>09/05/2012 - <br>09/04/2013</th>
						<th>09/05/2013 - <br>09/04/2014</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Consultant Expert</td>
						<td>$126.50</td>
						<td>$126.50</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Subject Matter Expert</td>
						<td>$88.66</td>
						<td>$88.66</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Project Manager</td>
						<td>$115.05</td>
						<td>$115.05</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Project Control Specialist</td>
						<td>$100.46</td>
						<td>$100.46</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Project Analyst</td>
						<td>$97.99</td>
						<td>$97.99</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Principal Cost Analyst</td>
						<td>$89.35</td>
						<td>$89.35</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Financial Analyst</td>
						<td>$72.91</td>
						<td>$72.91</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Program Analyst</td>
						<td>$77.28</td>
						<td>$77.28</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>BFM Manager</td>
						<td>$63.81</td>
						<td>$63.81</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Project Engineer</td>
						<td>$132.95</td>
						<td>$132.95</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Junior Engineer</td>
						<td>$77.58</td>
						<td>$77.58</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Systems Analyst</td>
						<td>$86.68</td>
						<td>$86.68</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Technical Writer</td>
						<td>$56.42</td>
						<td>$56.42</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
					<tr>
						<td>Administrative Assistant</td>
						<td>$47.36</td>
						<td>$47.36</td>
						<td>TBN</td>
						<td>TBN</td>
						<td>TBN</td>
					</tr>
				</tbody>
			</table>
			<br/>
			<h2>Advantages of Ordering Using GSA Schedule</h2>
			<p>
				GSA Schedule contracts are negotiated with the intent of achieving the contractors' "most favored customer" pricing/discounts.  Purchasing from GSA Schedule contracts offers the following 
				advantages over procuring on the open market:
				<ul style="padding-left:15px;">
					<li>GSA has determined prices under Schedule contracts to be fair and reasonable</li>
					<li>Synopses are not required for Schedule purchases</li>
					<li>Schedule contracts have been awarded in compliance with applicable laws and regulations</li>
					<li>Administrative time is reduced</li>
					<li>Schedule contracts offer a wide selection of state-of-the-art commercial supplies and services</li>
				</ul>
			</p>
			<br/>
			<h2>Ordering Procedures for Services</h2>
			<p>
				The process for ordering NSI MOBIS-related services has never been easier.  The steps below will assist Customer�s with this process.
			</p>
			<div style="padding-left:15px;">
			<p>	
				<h3>Step 1:  Ordering  Procedures/Documentation</h3>
				Through GSA, the ordering procedures for services have been simplified to empower Federal agencies to cut through red tape and reduce time, paperwork, and cost of money to the government.  
				This is because GSA has already negotiated contract terms and conditions and determined NSI prices to be fair and reasonable.  The prices identified in this Schedule include all applicable 
				burdens and fees.  
				<br/><br/>
				The documentation requirements for placing orders against GSA Schedule contracts are outlined in FAR 8.405-1(e) and 8.405-2(e). Documentation should contain the following basic information:
				<br/><br/>
				<ul style="padding-left:15px;">
					<li>
						<strong>For supplies, and services not requiring a statement of work</strong>
						<ul style="padding-left:15px;">
							<li>The Schedule contracts considered, noting the contractor from which the supply or service was purchased</li>
							<li>A description of the supply or service purchased</li>
							<li>The amount paid</li>
							<li>If applicable, the circumstances and rationale for limiting consideration of Schedule contractors to fewer than required in the Ordering Procedures for Supplies, and Services 
								Not Requiring a Statement of Work (see FAR 8.405-6)
							</li>
						</ul>
					</li>
					<br/>
					<li>
						<strong>For services that require a statement of work</strong>
						<ul style="padding-left:15px;">
							<li>The Schedule contracts considered, noting the contractor from which the service was purchased</li>
							<li>A description of the service purchased</li>
							<li>The amount paid</li>
							<li>If applicable, the circumstances and rationale for limiting consideration of Schedule contractors to fewer than required in the Ordering Procedures for Services Requiring a 
								Statement of Work (see FAR 8.405-6)
							</li>
							<li>The evaluation methodology used in selecting the contractor to receive the order</li>
							<li>The rationale for any tradeoffs in making the selection</li>
							<li>The fair and reasonable price determination required by FAR 8.405-2(d)</li>
							<li>If applicable, the rationale for using other than a firm-fixed price order or a performance-based order</li>
						</ul>
					</li>
				</ul>
				<h3>Step 2:  Determine Best Value</h3>
				Federal Acquisition Regulation (FAR) 8.4 offers some considerations for determining �best value�.  Considerations may include:
				<br/><br/>
				<ul style="padding-left:15px;">
					<li>Technical Expertise</li>
					<li>Past performance</li>
					<li>Subject Matter Knowledge of Contractor Personnel</li>
					<li>Delivery Schedule</li>
					<li>Management Approach</li>
				</ul>
				<h3>Step 3:  Place Your Order</h3>
				As a customer you have maximum flexibility in deciding where you want to go to contract for NSI MOBIS-related services.  NSI will work with you and which ever contracting activity you select.  
				Customers can use their local acquisition center or can utilize the contracting activities at ay one of the GSA Regional Centers.
				<br/><br/><br/>
			</p>
			</div>
			<h2>e-Buy</h2>
			<p>
				For services that require a statement of work, e-Buy, a component of GSA Advantage!�, provides a convenient way to publicize and disseminate the SOW and solicit quotations among GSA Schedule 
				contractors.  Federal agencies (buyers) may generate purchase orders through e-Buy using government wide commercial purchase cards, or they may create purchase orders separate from e-Buy using 
				their own internal systems. 
				<br/>
				For additional convenience, orders generated using e-Buy will be recorded in the buyer's GSA Advantage!� order history. 
				<br/><br/>
				<strong>What is e-Buy?</strong>
				<ul style="padding-left:15px;">
					<li>
						e-Buy is an online Request for Quotation (RFQ) tool designed to facilitate the request for submission of quotations for a wide range of commercial supplies and services offered by GSA 
						Schedule contractors who are on GSA Advantage!&copy;.
					</li>
					<li>
						e-Buy allows federal agencies (buyers) to maximize their buying power by leveraging the power of the Internet to increase Schedule contractor participation in order to obtain quotations 
						that will result in a best value purchase decision. e-Buy provides Schedule contractors (sellers) with greater opportunities to offer quotations and increase business volume for supplies 
						and services provided under their Schedule contracts. e-Buy streamlines the buying process with point-and-click functionality by allowing RFQs and responses to be exchanged electronically 
						between federal agencies and GSA Schedule contractors. In short, e-Buy provides both agencies and contractors with a tool that will result in savings of both time and money.   
						<br/><br/>
						<a href="https://www.gsaadvantage.gov/advgsa/advantage/ebuy/start_page.do?app=ebuy&source=elibrary" id="regLinks">e-Buy website<br/>https://www.gsaadvantage.gov/advgsa/advantage/ebuy/start_page.do?app=ebuy&source=elibrary</a> 
					</li>
				</ul> 




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