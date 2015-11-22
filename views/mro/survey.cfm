<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - MRO&L (Survey)</title>
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
				<!---<cfif event.isArgDefined('go') AND findNocase('Calibration',event.getArg('go'))>
					<cfinclude template="../calibration/menu.cfm" />
				<cfelse>--->
					<cfinclude template="side_nav.cfm" />
				<!---</cfif>--->
			</div>
		</td>
		<td valign="top" height="300px;" width="78%" style="padding-left:5px;">
			<h1>Customer Survey</h1>
			
				<p>
					Naval Systems, Inc. is committed to total Customer Satisfaction and AS 9110 conformance.  Please assist us with this commitment by 
					filling out this form.

				</p>	
				<p><span class="required">*</span> = Required fields</p>
				<form name="customerSurvey" action="process_survey.cfm" method="post">
					<table border="0" cellpadding="10" cellspacing="5">
						<tr>
					  		<td width="3">&nbsp;</td>
					  		<td><span class="required">*</span> <strong>Company/Customer Name:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">
					  			<input
					  				value=""
						  			type="text" 
						  			name="name" 
						  			size="50"
						  			maxlength="50" 
						   			tabindex='1'/>
						  	</td>
					 	</tr>
						<tr>
					  		<td width="3">&nbsp;</td>
					  		<td><span class="required">*</span> <strong>Survey Completed By:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">
					  			<input
					  				value=""
						  			type="text" 
						  			name="completedBy" 
						  			size="50"
						  			maxlength="50" 
						   			tabindex='1'/>
						  	</td>
						  </tr>
						 <tr>
					  		<td width="3">&nbsp;</td>
					  		<td>&nbsp;&nbsp;<strong>Title:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">
					  			<input
					  				value=""
						  			type="text" 
						  			name="title" 
						   			size="50" 
						  			tabindex='3' />
						  	</td>
						 </tr>
						 
						<tr>
							<td width="3">&nbsp;</td>
							<td valign="top"><span class="required">*</span> <strong>Phone Number:</strong>&nbsp;&nbsp;</td>
							<td>
								<input 
									value="" 
									type="text" 
									name="phoneNumber"
									maxlength="12" 
									size="15"
									tabindex='9' /><br/>xxx-xxx-xxxx
							</td>
							<td>&nbsp;</td>
							<td valign="top"><strong>Date:</strong>&nbsp;&nbsp;</td>
							<td valign="top">
								<input
									value="#DateFormat(now(),'mm/dd/yyyy')#"
									maxlength="12" 
									name="date" 
									size="15" 
									type="text"
									tabindex='10' />
							</td>
						</tr>
						
						<tr>
							<td valign="top">&nbsp;</td>
							<td colspan="5" valign="top"><strong>How do we compare with our competitors in the following categories? Please comment on any service less than Outstanding.</td>
						</tr>
						<tr>
							<td colspan="6">
								<table border="0" width="100%" cellspacing="10">
									<tr><strong>
										<th>&nbsp;</th>
										<th>Unsatisfactory</th>
										<th>Needs Improvement</th>
										<th>Average</th>
										<th>Good</th>
										<th>Outstanding</th>
									</tr>
									<tr>
										<td>Service</td>
										<td align="center"><input type="radio" name="service" value="1"></td>
										<td align="center"><input type="radio" name="service" value="2"></td>
										<td align="center"><input type="radio" name="service" value="3"></td>
										<td align="center"><input type="radio" name="service" value="4"></td>
										<td align="center"><input type="radio" name="service" value="5"></td>
									</tr>
									<tr>
										<td>Quality of Products</td>
										<td align="center"><input type="radio" name="quality" value="1"></td>
										<td align="center"><input type="radio" name="quality" value="2"></td>
										<td align="center"><input type="radio" name="quality" value="3"></td>
										<td align="center"><input type="radio" name="quality" value="4"></td>
										<td align="center"><input type="radio" name="quality" value="5"></td>
									</tr>
									<tr>
										<td>Completeness of orders</td>
										<td align="center"><input type="radio" name="completeness" value="1"></td>
										<td align="center"><input type="radio" name="completeness" value="2"></td>
										<td align="center"><input type="radio" name="completeness" value="3"></td>
										<td align="center"><input type="radio" name="completeness" value="4"></td>
										<td align="center"><input type="radio" name="completeness" value="5"></td>
									</tr>
									<tr>
										<td>On time delivery</td>
										<td align="center"><input type="radio" name="delivery" value="1"></td>
										<td align="center"><input type="radio" name="delivery" value="2"></td>
										<td align="center"><input type="radio" name="delivery" value="3"></td>
										<td align="center"><input type="radio" name="delivery" value="4"></td>
										<td align="center"><input type="radio" name="delivery" value="5"></td>
									</tr>
									<tr>
										<td>Response to customer's needs</td>
										<td align="center"><input type="radio" name="needs" value="1"></td>
										<td align="center"><input type="radio" name="needs" value="2"></td>
										<td align="center"><input type="radio" name="needs" value="3"></td>
										<td align="center"><input type="radio" name="needs" value="4"></td>
										<td align="center"><input type="radio" name="needs" value="5"></td>
									</tr>
									<tr>
										<td>Completeness of paperwork</td>
										<td align="center"><input type="radio" name="paperwork" value="1"></td>
										<td align="center"><input type="radio" name="paperwork" value="2"></td>
										<td align="center"><input type="radio" name="paperwork" value="3"></td>
										<td align="center"><input type="radio" name="paperwork" value="4"></td>
										<td align="center"><input type="radio" name="paperwork" value="5"></td>
									</tr>
								</table>	 
							</td>
						</tr>
						<tr>
							<td colspan="6">
								<strong>Comments: </strong>
							</td>
						</tr>
						<tr>
							<td colspan="6">
								<textarea name="comments" cols="80" rows="10"></textarea>		 
							</td>
						</tr>
						<tr>
							<td colspan="6">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="6"><input type="submit" name="Submit" value="Submit"></td>
						</tr>
					</table>
				</form>
				<SCRIPT LANGUAGE="JavaScript">
					<!--//
					// initialize the qForm object
					objForm = new qForm("customerSurvey");
					
					// make these fields required
					objForm.required("name, completedBy,phoneNumber");
					objForm.name.requiredMessage = "Your Company/Customer name is required.";
					objForm.completedBy.requiredMessage = "The Survey Completed By field is required.";
					objForm.phoneNumber.requiredMessage = "Your phone number is required.";
					//-->
				</SCRIPT>
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